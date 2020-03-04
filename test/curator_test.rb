require "./test/test_helper"
require "./lib/artist"
require "./lib/photograph"
require "./lib/curator"

class CuratorTest < Minitest::Test

  def test_it_exists
    curator = Curator.new
    assert_instance_of Curator, curator
  end

  def test_it_has_atrributes
    curator = Curator.new
    assert_equal [], curator.photographs
  end
end

# pry(main)> curator = Curator.new
# # => #<Curator:0x00007fb3d9111cc0...>
#
# pry(main)> curator.photographs
# # => []
#
# pry(main)> photo_1 = Photograph.new({
#      id: "1",
#      name: "Rue Mouffetard, Paris (Boy with Bottles)",
#      artist_id: "1",
#      year: "1954"
# })
# # => #<Photograph:0x00007fb3d8ea1cd8...>
#
# pry(main)> photo_2 = Photograph.new({
#      id: "2",
#      name: "Moonrise, Hernandez",
#      artist_id: "2",
#      year: "1941"
# })
# # => #<Photograph:0x00007fb3d8e0bfa8...>
#
# pry(main)> curator.add_photograph(photo_1)
#
# pry(main)> curator.add_photograph(photo_2)
#
# pry(main)> curator.photographs
# # => [#<Photograph:0x00007fb3d8ea1cd8...>, #<Photograph:0x00007fb3d8e0bfa8...>]
#
# pry(main)> curator.artists
# # => []
#
# pry(main)> artist_1 = Artist.new({
#     id: "1",
#     name: "Henri Cartier-Bresson",
#     born: "1908",
#     died: "2004",
#     country: "France"
# })
# # => #<Artist:0x00007fb3d8b4ed60...>
#
# pry(main)> artist_2 = Artist.new({
#     id: "2",
#     name: "Ansel Adams",
#     born: "1902",
#     died: "1984",
#     country: "United States"
# })
# # => #<Artist:0x00007fb3d90bb4b0...>
#
# pry(main)> curator.add_artist(artist_1)
#
# pry(main)> curator.add_artist(artist_2)
#
# pry(main)> curator.artists
# # => [#<Artist:0x00007fb3d8b4ed60...>, #<Artist:0x00007fb3d90bb4b0...>]
#
# pry(main)> curator.find_artist_by_id("1")
# # => #<Artist:0x00007fb3d8b4ed60...>
