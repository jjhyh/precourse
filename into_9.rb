# 1. Get the value of key `:b`.
# 2. Add to this hash the key:value pair `{e:5}`
# 3. Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}

h[:b]
h[:e] = 5
h.each { |k, v| h.delete(k) if v.to_f < 3.5 }