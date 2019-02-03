require 'rexml/document'

module Embulk
  module Formatter

    class MysqlXml < FormatterPlugin
      Plugin.register_formatter("mysql_xml", self)

      def self.transaction(config, schema, &control)
        task = {
          "root_element"     => config.param("root_element", :string),
          "row_element"      => config.param("row_element", :string),
          "timestamp_format" => config.param("timestamp_format", :string, default: "%Y-%m-%d %H:%M:%S"),
        }

        yield(task)
      end

      def init
        @root_element = task["root_element"]
        @row_element = task["row_element"]
        @timestamp_format = task["timestamp_format"]

        @document = REXML::Document.new
        @document.add(REXML::XMLDecl.new)
        @document.add(REXML::Element.new(@root_element))
      end

      def close
      end

      def add(page)
        column_names = page.schema.map(&:name)
        page.each do |record|
          row = REXML::Element.new(@row_element)
          column_names.zip(record).each do |column_name, value|
            if value.is_a?(Time)
              value = value.strftime(@timestamp_format)
            end
            row.add_attribute(column_name, value)
          end
          @document.root.add_element(row)
        end
      end

      def finish
        buf = ''
        @document.write(output: buf, indent: 4)

        file = file_output.next_file
        file.write(buf)
        file.write("\n")
        file_output.finish
      end
    end

  end
end
