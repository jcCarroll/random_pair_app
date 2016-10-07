def fix(names)
    group_string = ""
    group_string_two = ""
    group_string_three = ""
    group_number = 1
    if names.length == 2
        names.each do |pair|
            group_string_two << pair[0] + " and " + pair[1] + "<br>"
            group_number += 1
        end
    else
        names.length
        names.each do |pair|
            group_string_three << pair[0] + ", " + pair[1] + ", and " + pair[2] + "<br>"
            group_number += 1
        end
    end
    group_string = group_string_two + group_string_three
end