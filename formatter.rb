def fix(names)
    group = ""
    if names.length == 3
        names.each do |pair|
            group << pair[0] + ", " + pair[1] + ", and " + pair[2] + "<br>"
        end
    else
        names.length == 2
        names.each do |pair|
            group<< pair[0] + " and " + pair[1] + "<br>"
        end
    end
    group
end