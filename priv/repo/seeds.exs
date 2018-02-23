# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ReadableApi.Repo.insert!(%ReadableApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias ReadableApi.{Repo, Post}
Repo.delete_all(Post)

Enum.each([
    %Post{
        uuid: "8xf0y6ziyjabvozdd253nd",
        title: "Udacity is the best place to learn React",
        body: "Everyone says so after all.",
        author: "Arbatoss",
        category: "react",
        voteScore: 6,
        deleted: false 
    },
    %Post{
        uuid: "6ni6ok3ym7mf1p33lnez",
        title: "Learn Redux in 10 minutes!",
        body: "Just kidding. It takes more than 10 minutes to learn technology.",
        author: "Bible",
        category: "redux",
        voteScore: -5,
        deleted: false
    },
    %Post{
        uuid: "6no6ok3ym7mf1p33lnez",
        title: "Hoiwqj jioiwq Moss Voss Toss",
        body: "The result will only be true at a location if all the labels match. If values is a Series, that’s the index. If values is a dictionary, ",
        author: "Charlie",
        category: "udacity",
        voteScore: -5,
        deleted: false
    },
    %Post{
        uuid: "7ni6ok3ym7mf1p33lnez",
        title: "Flosss Moity Boswar Noppo",
        body: "DataFrame of booleans",
        author: "David",
        category: "udacity",
        voteScore: -5,
        deleted: false
    }
   
], &(Repo.insert(&1)))







