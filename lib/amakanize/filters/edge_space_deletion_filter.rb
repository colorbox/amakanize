require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class EdgeSpaceDeletionFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      # @param output [String] e.g. `" 踏切時間 : 1 (アクションコミックス) "`
      # @return [Hash] e.g. `"踏切時間 : 1 (アクションコミックス)"`
      def call(context:, output:)
        {
          context: context,
          output: output.gsub(/\s*(.+)\s*\z/, ""),
        }
      end
    end
  end
end
