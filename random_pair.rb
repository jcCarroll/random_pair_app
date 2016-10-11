def randomizer(names)
    shuffled = names.shuffle
    sliced = shuffled.each_slice(2).to_a
    if shuffled.length % 2 == 1
        sliced[-2] << sliced[-1][0]
        sliced.delete_at(-1)
        sliced
    else
        sliced
    end
end

def cap_names(caps)
    caps = caps.map(&:capitalize)
end

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