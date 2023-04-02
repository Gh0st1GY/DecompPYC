#!/usr/bin/env ruby

require 'marshal'

def read_pyc_file(filename)
  File.open(filename, 'rb') do |file|
    magic_number = file.read(4).unpack('H*').first
    raise "Mauvais numéro de version : #{magic_number}" unless magic_number == '03f30d0a'

    timestamp = file.read(4).unpack('L').first
    code = file.read

    return Marshal.load(code)
  end
end

def decompile_pyc_file(filename)
  code = read_pyc_file(filename)
  puts RubyVM::InstructionSequence.compile(code).disasm
end

if __FILE__ == $0
  if ARGV.length != 1
    puts "Utilisation : ruby decompile_pyc.rb file.pyc"
    exit(1)
  end

  filename = ARGV[0]
  decompile_pyc_file(filename)
end
