# inside a "_posts" directory...
directory "_posts" do

  # ...iterate over the "Article" records...
  dato.articles.each do |article|

    # ...and create a markdown file for each article!
    create_post "#{article.title}.md" do
      frontmatter(
        :yaml,
        title: article.title,
        description: article.description,
        image: article.image
      )

      content(article.content)
    end
  end
end