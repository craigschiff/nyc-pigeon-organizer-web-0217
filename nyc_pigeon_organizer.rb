require 'pry'

def nyc_pigeon_organizer(data)
    # write your code here!
    new_hash = {}
    data.each do |attribute, detail|
        detail.each do |element, people|
            people.each do |name|
                if new_hash[name] == nil
                    new_hash[name] = {}
                end
                if new_hash[name][attribute] == nil
                    new_hash[name][attribute] = []
                end
                new_hash[name][attribute] << element.to_s
            end
        end
    end
    new_hash
end