File.chmod(0755, 'foo')
File.chmod(0644, 'foo')

st = File.stat('foo')
p st

File.chmod(st.mode | 0111, 'foo')
st = File.stat('foo')
p st

