module Nicony
  class Mina
    def initialize
      @config = {}
      @tasks  = {}
    end

    def set(name, value)
      @config[name] = value
    end

    def task(name, content)
      @tasks[name] = content
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

      text
    end

    def run(name)
      ret = nil
      Tempfile.open('mina') do|io|
        io.write self.text
        io.close

        ret = %x("bundle exec mina -f #{io.path} #{name}")
      end
      ret
    end
  end
end
