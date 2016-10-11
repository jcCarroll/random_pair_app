# ["lyle", "jacob", "jeremy", "ysabele", "lotfi", "cyndi", "don", "stephanie", "susan", "adam", "mike", "maxx", "john"]

### This is the work everyone just stole form me ###
def randomizer(names)
    names_array = names.split(",")
    shuffled = names_array.shuffle
    sliced = shuffled.each_slice(2).to_a
    if shuffled.length % 2 == 1
        sliced[-2] << sliced[-1][0]
        sliced.delete_at(-1)
        sliced
    else
        sliced
    end
end