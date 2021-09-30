# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create!(title: 'Jurassic Park',
                description:
                  %{<p>One of the highest grossing films in history,
                      Jurassic Park brings you an adventure-filled experience.
                      The cast of this captivating film is led by Sam Neill, Laura Dern,
                      Jeff Goldblum and Richard Attenborough.
                      With its incredible special effects and an absolutely captivating script,
                      Jurassic Park takes you to a remote island where a stunning theme park with living
                      dinosaurs is about to become a death trap, when the main characters are forced
                      to survive among the prehistoric predators. Come back for an adventure
                      so spectacular you'll want to watch it again and again.
                  </p>}, price: 20.00)
Product.create!(title: 'The Avengers',
                description:
                  %{<p>Marvel Studios presents The Avengers,
                      the most spectacular superhero team of all time,
                      featuring icons such as Iron Man, The Incredible Hulk,
                      Thor, Captain America, Hawkeye and Black Widow.
                      When an unexpected enemy threatens to endanger world security, Nick Fury,
                      Director of the international peacekeeping agency known as SHIELD,
                      urgently needs to find a team to save the world from the greatest disaster of all.
                      So begins a worldwide search for new recruits.
                  </p>}, price: 15.00)
Product.create!(title: "Schindler's List",
                description:
                  %{<p>Schindler's List,
                    one of the most significant films of all time.
                    Winner of seven Oscars, including Best Picture and Best Director,
                    this incredible true story follows the enigmatic Oskar Schindler (Liam Neeson),
                    who saved the lives of more than 1,100 Jews during the Holocaust.
                    It is the triumph of a man who made a difference in one of the darkest chapters
                    of human history, and the plight of those who survived because of what he did.
                    Meticulously restored from the original film negative in impeccable high definition
                    supervised by Steven Spielberg, Schindler's List is a powerful story whose lessons of
                    courage and faith continue to inspire generations.
                  </p>}, price: 16.99)
Product.create!(title: 'Gladiator',
                description:
                  %{<p>Gladiator is a fascinating combination of realistic
                    action and extraordinary legend with a powerful and energetic performance by Russell Crowe.
                    Maximus, General of the Roman Legions, is loved by all, even Caesar, Marcus Aurelius,
                    who before his death chooses him as his successor,leaving aside his own son, Commodus.
                    Commodus, moved by hatred, prepares a conspiracy against Maximus, condemning him and his family to death.
                    Maximus tries to save his wife and son but by the time he arrives it is too late, Commodus has beaten him to it.
                    Maximus returns to Rome as a gladiator seeking revenge.
                  </p>}, price: 18.15)
Product.create!(title: 'The Pianist',
                description:
                  %{<p>Wladyslaw Szpilman (Adrien Brody) was one of Poland's best-known pianists, but when the war broke out,
                    like so many Jews, Szpilman and his family were evicted from their flat and crowded together with thousands of
                    others into the Warsaw ghetto, where the pianist eked out a living as best he could, playing in the bars where
                    collaborators and black market dealers gathered.
                  </p>}, price: 35.99)
Product.create!(title: 'Inside Out',
                description:
                  %{<p>Growing up can be a bumpy road and Riley is no exception. She is forced to leave her life in the
                    American Midwest behind because her father finds a new job in San Francisco. Like all of us, Riley is
                    guided by her emotions: Joy, Fear, Anger, Anger, Anger and Sadness. The emotions live in the HQ, the control
                    centre of Riley's mind, where they help her overcome the problems of everyday life. As Riley and her emotions
                    struggle to adjust to a new life in San Francisco, turmoil takes over HQ. Although Alegria, Riley's most important emotion,
                    tries to maintain a positive attitude, conflicting emotions arise as she has to cope with a new city,
                    a new house and a new school.
                  </p>}, price: 35.99)