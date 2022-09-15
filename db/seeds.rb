puts "Seeding..."

User.create(:email => "john@gmail.com", :password => "123456", :password_confirmation => "123456", username: "jfinley92")
User.create(:email => "aakash@gmail.com", :password => "123456", :password_confirmation => "123456", username: "skyaakas")
User.create(:email => "graham@gmail.com", :password => "123456", :password_confirmation => "123456", username: "hammerbaby9")
Post.create(:subject => 'Basics of Local Storage', :body => "<p>Early on in my Software Engineering career, one of the first questions I had was how to store data on the client's computer for future use. This data will only be available in the browser you are currently working in and can be readily accessed when the page is reloaded. At this stage in my learning, I hadn't yet had any access to backend programming and didn't know how to accomplish this. This is where Local Storage comes in.</p><p><br></p><h2>What is Local Storage?</h2><p><br></p><p>Local storage is a key/value database that is available on a user's browser. This database can be persisted for an indefinite amount of time or until it is manually deleted. Local storage currently only accepts strings so if you are storing an array or object you are going to need to use<em> JSON.stringify()  </em>on it first to convert it into a string.&nbsp;</p><p><br></p><h2>When Not To Use Local Storage?</h2><p><br></p><p>Although Local Storage has many uses, it is important to not save any sensitive information. This includes passwords, API keys, authentication tokens, etc. Malicious third-parties can easily access this information and use it to their own gain.</p><p><br></p><h2>When To Use Local Storage?</h2><p><br></p><p>As mentioned earlier, Local Storage gives you persistence on your website. It is used to store information that the site should still be able to have even if it is refreshed. This is commonly done to save user preferences like UI themes. Local storage can also be used to save game statistics. A recent example is the popular game <a href=\"https://www.nytimes.com/games/wordle/index.html\" rel=\"noopener noreferrer\" target=\"_blank\">Wordle</a>. Every day you play the game it saves items like the amount of guesses, your current win streak, and the win percentage. If you were to try and open the game in another browser or computer, you would find that all of your statistics would be gone.&nbsp;</p><h2><br></h2>", :image_url => "https://res.cloudinary.com/practicaldev/image/fetch/s--YUN6ynyq--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/yzr72d10jr9u1qrhgdrq.png", :user_id => 1)
Post.create(:subject => 'Beginner CSS Tools', :body => "<p>CSS can be a very user friendly design interface used to make websites clean and with unique style. Think of it as one of your friends that help you decide what clothes or accessories to buy and wear and how to wear them. Without CSS basic HTML would remind you of early internet format, and those websites no one likes to use. However, once you learn a few tricks, you feel like an expert developer.</p><p>One of the best resources in CSS is the “display: flex” which can be assigned to almost any element. It allows us to control the alignment, direction, format, and gives you plenty insight on what to add to the margin and padding elements. It is unique in that you can see from the developer tools the direct changes and can edit directly in the elements tab. Once you have a rough idea of what you want to use within each div, then simply copy and paste the additions into your CSS.</p><p><br></p><p>As you can see, simply select the blue flex button, and in the styles tab you will see “display:flex” with the icon next to it. Click on that and you will be able to play around with all of the little options. From here add the changes into CSS. Be sure to be aware that having the console to the right of the screen will affect how changes are perceived. Placing it to the bottom of the screen lets you see everything how it will stay.</p><p>Another popular CSS element is “margin”. Margins are used to create space around elements,&nbsp;<em>outside</em>&nbsp;of any defined borders. This one is super nice and allows you to precisely move content where you want it. “Margin” by itself will add margins in each direction of the content. “Margin-top” will naturally, add margin in the direction from the top. As you can guess, there is also a “margin-right, margin-bottom, and margin-left.” There is also “margin:auto” where it automatically centers the content horizontally within the container.</p><p><br></p><p>Margin is fun and mostly harmless to mess around with. Don’t be afraid to make mistakes that what the undo short-cut is made for!</p><p>CSS Padding is like margin, but it allows you to create space around elements,&nbsp;<em>inside&nbsp;</em>of any defined borders. Margin and padding go hand in hand creating the perfect balance inside the container. Padding, like margin also has specifiers that allow you to directly influence the changes. Say you need to place an item exactly in the container. Then the padding would look like this:</p><p><br></p><p>Again, you can do the same for margin, and it will save your code some valuable space! These elements are great starters and once you have these down it is easy to add elements like border-shadows to create indention looks, transitions and mouseovers, and many more!</p><p>Hope you have learned something from one beginning coder to another! Happy Coding! ❤</p>", :image_url => "https://miro.medium.com/max/1400/1*IUP99gVn6wCNvpYIMxQtfA.png", :user_id => 3)
Post.create(:subject => 'Multiple Programming Languages', :body => "<p>Learning multiple programming language is challenging and will take a huge dedication to achieve. But once you got fundamentals of each language, you can toggle between them to create the desired application.</p><p><br></p><p>Vanilla JavaScript itself can help you achieve create your application, but if your application had lot more fetching of the data, and had to pass variables, then React JavaScript can help you more by its hooks such as useState, useEffect which is in fact a lot more easier to use than writing traditional functions on Vanilla JavaScript. It feels like, react JavaScript is convenient than vanilla JavaScript for the front end development.</p><p>For the Backend Development, as we all know, Vanilla JS and React JS can perfectly achieve full potential of your application, but they relied mostly on creating function and passing those functions, whereas Ruby on the other side can create method, which is far more convenient to make than functions on JS. We can then use a ruby gem named Sinatra to connect our backend with our frontend to conveniently pass down the methods.</p><p><br></p><p>Although using Ruby as the backend will make a repetition on the front end to perform any fetching actions, but ruby methods is far more convenient to use because of methods.</p><p><br></p><p>What I have learned so far is, Programming language that is backend focused is way more convenient to produce any work focused functions or methods. and language that is front-end based is more user-friendly and more easy to debug and locate the errors.</p>", :image_url => "https://images.ctfassets.net/yr4qj72ki4ky/legacyBlogPost77Thumbnail/cd4783ad7b35efc4367166a570a9952e/bigstock-Real-Java-Script-Code-Developi-217215433.jpg?q=72", :user_id => 2)

Comment.create(:body => 'You also do not need to use key and the like and can simply access the value by localStorage.key', :user_id => 2, :post_id => 1)
Comment.create(:body => 'Great topic!', :user_id => 3, :post_id => 1)
puts "Success"