def sort_names(names)
    split_names = names.map { |name| name.split(" ") }
    
    # sort by a single element
    # split_names.sort { |name_one, name_two| name_one[0] <=> name_two[0] }
    # sort by two dimensions - first name and last name
    # split_names.sort_by { |name| [name[1], name[0]] }

    puts split_names.sort_by { |name| name[1] }
end

test_names =  ["Ashley Yards", "Melissa Banks", "Martin Stove", "Erika Johnson", "Robert Jones", "Joe Jones", "Robert Yards"]

sort_names(test_names)
