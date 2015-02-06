# Copyright 2014 Taxamo, Ltd.

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Report
  attr_accessor :tax_rate, :amount, :country_name, :country_code, :tax_amount, :skip_moss, :currency_code

  # :internal => :external
  def self.attribute_map
    {
      :tax_rate => :tax_rate,
      :amount => :amount,
      :country_name => :country_name,
      :country_code => :country_code,
      :tax_amount => :tax_amount,
      :skip_moss => :skip_moss,
      :currency_code => :currency_code

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if attributes["tax_rate"]
      @tax_rate = attributes["tax_rate"]
        
    end
    if attributes["amount"]
      @amount = attributes["amount"]
        
    end
    if attributes["country_name"]
      @country_name = attributes["country_name"]
        
    end
    if attributes["country_code"]
      @country_code = attributes["country_code"]
        
    end
    if attributes["tax_amount"]
      @tax_amount = attributes["tax_amount"]
        
    end
    if attributes["skip_moss"]
      @skip_moss = attributes["skip_moss"]
        
    end
    if attributes["currency_code"]
      @currency_code = attributes["currency_code"]
        
    end
    

  end

  def to_body
    body = {}
    self.class.attribute_map.each_pair do |key, value|
      v = self.send(key)
      unless v.nil?
        if v.is_a?(Array)
          array = Array.new
          v.each do |item|
            if item.respond_to?("to_body".to_sym)
              array.push item.to_body
            else
              array.push item
            end
          end
          body[value] = array
        else
          if v.respond_to?("to_body".to_sym)
            body[value] = v.to_body
          else
            body[value] = v
          end
        end
      end
    end
    body
  end
end
