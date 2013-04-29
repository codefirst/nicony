require 'spec_helper'
require 'nicony/mina'

describe Nicony::Mina do
  let(:mina) { Nicony::Mina.new }

  describe 'config' do
    subject { mina.text }

    describe 'set' do
      context 'string value' do
        before { mina.set :domain, 'localhost' }
        it { should =~ /set :domain, "localhost"/ }
      end

      context 'int value' do
        before { mina.set :port, 3000 }
        it { should =~ /set :port, 3000/ }
      end
    end

    describe 'task' do
      before { mina.task 'hello', 'queue! "echo hello"' }
      it { should =~ /task :hello do/ }
      it { should =~ /queue! "echo hello"/ }
    end
  end
end
