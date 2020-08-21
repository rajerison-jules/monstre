require 'bundler'

Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

require 'monstre'
	
  Monstre.new("Larves","monstre_larve").perform

  Monstre.new("Monstres des cavernes","monstre_caverne").perform

  Monstre.new("Monstres des Plaines herbeuses","monstre_plaine_herbeuse").perform

