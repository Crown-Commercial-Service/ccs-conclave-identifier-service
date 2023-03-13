module Helpers
  class ApplicationHelper

    def self.generate_specific_ppon_id(index)
      result = %x(python3 ppon_id_script.py #{index} 2>&1)
      puts "Generating PPON ID, at index: #{index}:  #{result}"
      return result.to_s
    end
  end
end
