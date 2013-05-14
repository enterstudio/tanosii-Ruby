module M1
end

module M2
end

module M3
  include M2
end

class C
  include M1
  include M3
end

p C.ancestors
