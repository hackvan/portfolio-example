# Setup an administrator account:
user = User.create(username: "administrator", password: "123456", password_confirmation: "123456")

# Create a default portafolio:
description = <<-BIO
Jon Snow, born Aegon Targaryen, is the son of Lyanna Stark and Rhaegar Targaryen, the late Prince of Dragonstone. From infancy, Jon is presented as the bastard son of Lord Eddard Stark, Lyanna's brother, and raised by Eddard alongside his lawful children at Winterfell but his true parentage is kept secret from everyone, including Jon himself. In order to escape his bastard status, Jon joins the Night's Watch and is eventually chosen as Lord Commander. However, he is later murdered in a mutiny and resurrected by the Red Priestess Melisandre. Freed from his Night's Watch vows, Jon joins his cousin, Sansa Stark, in building an army and together they retake Winterfell from House Bolton, restoring House Stark's dominion over the North with Jon being declared the new King in the North. However, after successfully capturing a wight and presenting it to the Lannisters as proof that the Army of the Dead is real, Jon pledges himself and his army to Daenerys Targaryen, Rhaegar's sister, and steps down as King of the North.[2]
BIO
image_url = 'http://cdn02.cdn.justjared.com/wp-content/uploads/headlines/2016/04/jon-snow-is-dead-says-official-game-of-thrones-synopsis.jpg'
profile = Profile.create(name:             "Jon Snow",
                         description:      description,
                         image_url:        image_url,
                         twitter_username: "LordSnow"
                        )
