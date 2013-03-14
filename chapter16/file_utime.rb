filename = "foo"
open(filename, "w").close

st = File.stat(filename)
p st.ctime
p st.mtime
p st.atime

File.utime(Time.now-100, Time.now-100, filename)
st = File.stat(filename)
p st.ctime
p st.mtime
p st.atime
