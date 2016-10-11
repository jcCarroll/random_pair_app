def randomizer(names)
    names = names.map(&:capitalize)
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