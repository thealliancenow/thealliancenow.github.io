The Alliance
============

This site is run on Middleman.

Getting Started
---------------

1.  Install Middleman: [see the official docs](https://middlemanapp.com/basics/install/)

2.  In Terminal, go to your projects directory and clone the project:

        cd ~/Projects/
        git clone git@github.com:thealliancenow/the-alliance.git
        cd the-alliance

3.  Install dependencies with bundler:

        bundle install

4.  Run the app:

        bundle exec middleman

5. Visit the site your browser at `http://localhost:4567/`.


Adding Actions
--------------

1. In Terminal, run `bundle exec middleman article your-post-url` where
   `your-post-url` is your action slug. You'll have to update the `title` field
   in the front matter from `your-post-url` to `Your Action Title`.

2. In the frontmatter (found at the top of the file that was generated), add
   about how long the action should take as the `duration`:

        duration: 5 minutes

3. In the frontmatter, add your action button's text and URL:

        button_text: Sign the Petition
        button_url: "https://example.com/"

4. Upload your image to the `source/images/actions` folder. Images should
   be **640px by 400px**. Make sure the image is as small as possible by
   compressing it with something like [ImageOptim](https://imageoptim.com/mac).
   Then, add these fields in the frontmatter:

        image_url: "name-of-your-file.jpg"
        image_alt: "Description of what's in the photo"
        image_credit: Photographer's name for credit if needed (optional)

5. In the frontmatter, add tags separated by commas. Please include at least one
   of these main categories: `politics`, `human-rights`, `social-support`,
   `privacy`, `environment`, `economics`, `donate`, `health`.

        tag: human-rights, social-support

6. In the action body write a *very* short description of why someone should
   take this action. One sentence is best. We want to make taking action as
   easy as possible for people. Also, the page we're linking to will probably
   have a longer explanation.

7. Preview in the browser, commit your code, and submit a pull request!

Code of Conduct
---------------

Please note that this project is released with a
[Contributor Code of Conduct](/CODE_OF_CONDUCT.md). By participating in this
project you agree to abide by its terms.
