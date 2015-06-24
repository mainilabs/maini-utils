require 'digest'

class String

  def to_bool
    return true if ['true', '1', 'yes', 'on', 't'].include? self
    return false if ['false', '0', 'no', 'off', 'f'].include? self
    return nil
  end

  def black;          ansi(30) end
  def red;            ansi(31) end
  def green;          ansi(32) end
  def brown;          ansi(33) end
  def blue;           ansi(34) end
  def magenta;        ansi(35) end
  def cyan;           ansi(36) end
  def gray;           ansi(37) end
  def bg_black;       ansi(40) end
  def bg_red;         ansi(41) end
  def bg_green;       ansi(42) end
  def bg_brown;       ansi(43) end
  def bg_blue;        ansi(44) end
  def bg_magenta;     ansi(45) end
  def bg_cyan;        ansi(46) end
  def bg_gray;        ansi(47) end
  def bold;           "\033[1m#{self}\033[22m" end
  def reverse_color;  "\033[7m#{self}\033[27m" end

  def ansi(code)
    "\e[#{code.to_s}m#{self}\e[0m"
  end

  ## Returns the hex-encoded SHA1 hash value of the current string. Optionally, pass
  ## a value to limit the length of the returned SHA.
  def to_sha1(length = 40)
    Digest::SHA1.hexdigest(self)[0,length]
  end

  ## Returns the hex-encoded MD5 hash value of the current string. Optionally, pass
  ## a value to limit the length of the returned SHA.
  def to_md5(length = 32)
    Digest::MD5.hexdigest(self)[0,length]
  end

  class << self

    def random(options = {})
      Maini::Utils::RandomString.generate(options)
    end

    ## Returns a psuedo-random UUID which sepearated by hyphens in standard UUID
    ## format. It's worth noting this doesn't actually follow the specification
    ## for Version 4 UUIDs.
    def generate_token(options = {})
      values = [rand(0x0010000), rand(0x0010000), rand(0x0010000), rand(0x0010000), rand(0x0010000), rand(0x1000000), rand(0x1000000)]
      "%04x%04x-%04x-%04x-%04x-%06x%06x" % values
    end

  end



end