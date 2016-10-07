def fix(names)
    group = ""
    names.each do |pair|
        if pair.include? (pair[2])
            group << pair[0] + ", " + pair[1] + ", and " + pair[2] + "<br>"
        else
            group << pair[0] + " and " + pair[1] + "<br>"
        end
    end
    group
end