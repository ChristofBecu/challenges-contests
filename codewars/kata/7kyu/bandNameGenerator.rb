def band_name_generator(name)
    name[0] == name[-1] ? name = name.capitalize + name[1..name.size-1] : name = "The #{name.capitalize}"
end
