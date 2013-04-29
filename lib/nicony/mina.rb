# Example:
#
#   require 'nicony/mina'
#   mina = Nicony::Mina.new
#   mina.set :domain, 'localhost'
#   mina.task 'hello', 'queue! %[echo hello]'
#
#   mina.run 'hello'
#
module Nicony
  class Mina
    def initialize
      @config = {}
      @tasks  = {}
      @raw    = ''
    end

    def set(name, value)
      @config[name] = value
    end

    def task(name, content)
      @tasks[name] = content
    end

    def raw=(raw)
      @raw = raw
    end

    def text
      text = ''
      @config.each do|name, value|
        text += "set :#{name}, #{value.inspect}\n"
      end

      @tasks.each do|name, content|
        text += <<END
task :#{name} do
  #{content}
end
END
      end

      text += @raw

      text
    end

    def run(name)
      ret = nil
      Rails.logger.info "runing"
      Tempfile.open('mina') do|io|
        io.write self.text
        io.close

        Rails.logger.info self.text
        ret = %x(bundle exec mina -f #{io.path} #{name})
      end
      ret
    end
  end
end
