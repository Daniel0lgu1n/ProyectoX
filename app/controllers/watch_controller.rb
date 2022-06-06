class WatchController < ApplicationController
  def watch
    lines = Array.new

    File.open(Rails.root.join('storage', 'db.txt')).each { |line| lines << line }

    @info_video_json = lines.map { |va| va if va.include?(params["v"].split("_").first) }.compact.first
    @codigo = params["v"].split("_").first
  end
end
