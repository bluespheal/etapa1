CodeaCamp05s-Mac-mini:lunes codea_mac_05$ irb
irb(main):001:0> 5 + 5
=> 10
irb(main):002:0> 50 - 21
=> 29
irb(main):003:0> "hola " + "como estas"
=> "hola como estas"
irb(main):004:0> "hola como estas".split
=> ["hola", "como", "estas"]
irb(main):005:0> hola = "hola como estas"
=> "hola como estas"
irb(main):006:0> hola.split
=> ["hola", "como", "estas"]
irb(main):007:0> array = [1, "hola", 423]
=> [1, "hola", 423]
irb(main):008:0> puts array
1
hola
423
=> nil
irb(main):009:0> print array
[1, "hola", 423]=> nil
irb(main):010:0> p array
[1, "hola", 423]
=> [1, "hola", 423]
irb(main):011:0> inspect array
ArgumentError: wrong number of arguments (1 for 0)
  from (irb):11:in `to_s'
  from (irb):11
  from /Users/codea_mac_05/.rbenv/versions/2.2.4/bin/irb:11:in `<main>'
irb(main):012:0> inspect(array)
ArgumentError: wrong number of arguments (1 for 0)
  from (irb):12:in `to_s'
  from (irb):12
  from /Users/codea_mac_05/.rbenv/versions/2.2.4/bin/irb:11:in `<main>'
irb(main):013:0> array.inspect
=> "[1, \"hola\", 423]"
irb(main):014:0> "hola".capitalize!
=> "Hola"
irb(main):015:0> hola.capitalize!
=> "Hola como estas"
irb(main):016:0> hola.upcase!
=> "HOLA COMO ESTAS"
irb(main):017:0> hola
=> "HOLA COMO ESTAS"
irb(main):018:0> hola.downcase!
=> "hola como estas"
irb(main):019:0> hola
=> "hola como estas"
irb(main):020:0> hola.upcase
=> "HOLA COMO ESTAS"
irb(main):021:0> hola
=> "hola como estas"
irb(main):022:0> Math.sqrt(9)
=> 3.0
irb(main):023:0> numero = 7690939204
=> 7690939204
irb(main):024:0> numero.sqrt
NoMethodError: undefined method `sqrt' for 7690939204:Fixnum
  from (irb):24
  from /Users/codea_mac_05/.rbenv/versions/2.2.4/bin/irb:11:in `<main>'
irb(main):025:0> Math.sqrt(numero)
=> 87698.0
irb(main):026:0> def shout(string) string.upcase end
=> :shout
irb(main):027:0> shout("hola")
=> "HOLA"
irb(main):028:0> def hola
irb(main):029:1> print "hola"
irb(main):030:1> end
=> :hola
irb(main):031:0> hola
=> "hola como estas"
irb(main):032:0> def hoaaaaa
irb(main):033:1> print "dsfadsfs"
irb(main):034:1> end
=> :hoaaaaa
irb(main):035:0> hoaaaaa
dsfadsfs=> nil
irb(main):036:0> 