irb(main):006:0> str.unpack('C')
=> [97]
irb(main):007:0> str.unpack('C*')
=> [97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114,
 115, 116, 117, 118, 119, 120, 121, 122]
irb(main):008:0> str.unpack("C*")
=> [97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114,
 115, 116, 117, 118, 119, 120, 121, 122]
irb(main):009:0> str.unpack("H")
=> ["6"]
irb(main):010:0> str.unpack("H*")
=> ["6162636465666768696a6b6c6d6e6f707172737475767778797a"]
irb(main):011:0> str.unpack("H2")
=> ["61"]
irb(main):012:0> str.unpack("H7")
=> ["6162636"]
irb(main):013:0> str.unpack("HHH")
=> ["6", "6", "6"]
irb(main):014:0> str.unpack("H" * str.size)
=> ["6", "6", "6", "6", "6", "6", "6", "6", "6", "6", "6", "6", "6", "6", "6", "7", "7", "
7", "7", "7", "7", "7", "7", "7", "7", "7"]
irb(main):015:0> str.unpack("H2" * str.size)
=> ["61", "62", "63", "64", "65", "66", "67", "68", "69", "6a", "6b", "6c", "6d", "6e", "6
f", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "7a"]
irb(main):016:0> str.unpack("U" * str.size)
=> [97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114,
 115, 116, 117, 118, 119, 120, 121, 122]
irb(main):017:0> str
=> "abcdefghijklmnopqrstuvwxyz"
irb(main):018:0> str.upcase
=> "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
irb(main):019:0> str = str + str.upcase!
=> "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"
irb(main):020:0> str
=> "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"
irb(main):021:0> str.downcase
=> "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
irb(main):022:0> str - str/2
NoMethodError: undefined method '/' for "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVW
XYZ":String
        from (irb):22
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in '<main>'
irb(main):023:0> str.pop
NoMethodError: undefined method 'pop' for "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTU
VWXYZ":String
        from (irb):23
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in '<main>'
irb(main):024:0> str = "abcdefghijklmnopqrstuvwxyz"
=> "abcdefghijklmnopqrstuvwxyz"
irb(main):025:0> str
=> "abcdefghijklmnopqrstuvwxyz"
irb(main):026:0> str + str
=> "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
irb(main):027:0> str
=> "abcdefghijklmnopqrstuvwxyz"
irb(main):028:0> str.push
NoMethodError: undefined method 'push' for "abcdefghijklmnopqrstuvwxyz":String
        from (irb):28
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in '<main>'
irb(main):029:0> array = []
=> []
irb(main):030:0> array.push str
=> ["abcdefghijklmnopqrstuvwxyz"]
irb(main):031:0> array
=> ["abcdefghijklmnopqrstuvwxyz"]
irb(main):032:0> array.push(str.upcase)
=> ["abcdefghijklmnopqrstuvwxyz", "ABCDEFGHIJKLMNOPQRSTUVWXYZ"]
irb(main):033:0> array.join
=> "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
irb(main):034:0> str
=> "abcdefghijklmnopqrstuvwxyz"
irb(main):035:0> array
=> ["abcdefghijklmnopqrstuvwxyz", "ABCDEFGHIJKLMNOPQRSTUVWXYZ"]
irb(main):036:0> array.unpack
NoMethodError: undefined method 'unpack' for ["abcdefghijklmnopqrstuvwxyz", "ABCDEFGHIJKLM
NOPQRSTUVWXYZ"]:Array
        from (irb):36
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in '<main>'
irb(main):037:0> array.to_str
NoMethodError: undefined method 'to_str' for ["abcdefghijklmnopqrstuvwxyz", "ABCDEFGHIJKLM
NOPQRSTUVWXYZ"]:Array
        from (irb):37
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in '<main>'
irb(main):038:0> array.to_s
=> "[\"abcdefghijklmnopqrstuvwxyz\", \"ABCDEFGHIJKLMNOPQRSTUVWXYZ\"]"
irb(main):039:0> str
=> "abcdefghijklmnopqrstuvwxyz"
irb(main):040:0> strup = array[1]
=> "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
irb(main):041:0> strup
=> "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
irb(main):042:0> strup.unpack(U*)
SyntaxError: (irb):42: syntax error, unexpected ')'
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in '<main>'
irb(main):043:0> strup.unpack('U*')
=> [65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86
, 87, 88, 89, 90]
irb(main):044:0> arr = []
=> []
irb(main):045:0> arr.push(strup.unpack('U*'))
=> [[65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 8
6, 87, 88, 89, 90]]
irb(main):046:0> arr.push(str.unpack('U*'))
=> [[65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 8
6, 87, 88, 89, 90], [97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 11
1, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122]]
irb(main):047:0> arr
=> [[65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 8
6, 87, 88, 89, 90], [97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 11
1, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122]]
irb(main):048:0> arr2 = []
=> []
irb(main):049:0> arr.push(strup.unpack('C*'))
=> [[65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 8
6, 87, 88, 89, 90], [97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 11
1, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122], [65, 66, 67, 68, 69, 70, 71, 72
, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90]]
irb(main):050:0> strup
=> "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
irb(main):051:0> arr
=> [[65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 8
6, 87, 88, 89, 90], [97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 11
1, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122], [65, 66, 67, 68, 69, 70, 71, 72
, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90]]
irb(main):052:0> arr.pop
=> [65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86
, 87, 88, 89, 90]
irb(main):053:0> arr
=> [[65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 8
6, 87, 88, 89, 90], [97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 11
1, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122]]
irb(main):054:0> arr2.push(strup.unpack('C*'))
=> [[65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 8
6, 87, 88, 89, 90]]
irb(main):055:0> arr2.push(str.unpack('C*'))
=> [[65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 8
6, 87, 88, 89, 90], [97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 11
1, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122]]
irb(main):056:0> arr == arr2
=> true
irb(main):057:0> arr2?
NoMethodError: undefined method 'arr2?' for main:Object
        from (irb):57
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in '<main>'
irb(main):058:0> arr ? arr2
SyntaxError: (irb):58: syntax error, unexpected $end, expecting ':'
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in '<main>'
irb(main):059:0> arr ? == arr2
SyntaxError: (irb):59: syntax error, unexpected tEQ
arr ? == arr2
        ^
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in '<main>'
irb(main):060:0> ? arr == arr2
(irb):60: warning: invalid character syntax; use ?\s
SyntaxError: (irb):60: syntax error, unexpected '?'
? arr == arr2
 ^
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in '<main>'
irb(main):061:0> if arr == arr2
irb(main):062:1> puts "pack('U*') & pack('C*') appear to do the same thing"
irb(main):063:1> end
pack('U*') & pack('C*') appear to do the same thing
=> nil
irb(main):064:0> arr.push(str.unpack('U*'))