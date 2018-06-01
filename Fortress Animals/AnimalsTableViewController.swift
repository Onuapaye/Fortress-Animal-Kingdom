//
//  AnimalsTableViewController.swift
//  Fortress Animals
//
//  Created by epita on 31/05/2018.
//  Copyright © 2018 Fortress Bismark. All rights reserved.
//

import UIKit

class AnimalsTableViewController: UITableViewController {

    //declaration of an array of type AnimalClassFile and instantiating
    //the size of the array to empty
    var animalsArray: [AnimalClassFile] = []
    
    let tigerReproduction: String = "Mating can occur all year round, but is more common between November and April. A female is only receptive for three to six days. Mating is frequent and noisy during that time. Gestation ranges from 93 to 112 days, with an average of 103 to 105 days. Litters consist of one or three cubs, rarely also six. Cubs weigh from 680 to 1,400 g (1.50 to 3.09 lb) each at birth, and are born blind. Females lactate for five to six months. The females rears them alone, with the birth site and maternal den in a sheltered location such as a thicket, cave or rocky crevice. The father generally takes no part in rearing them."
    let tigerDescription = "The tiger (Panthera tigris) is the largest cat species, most recognizable for its pattern of dark vertical stripes on reddish-orange fur with a lighter underside. The species is classified in the genus Panthera with the lion, leopard, jaguar, and snow leopard. It is an apex predator, primarily preying on ungulates such as deer and bovids. It is territorial and generally a solitary but social predator, often requiring large contiguous areas of habitat that support its prey requirements. This, coupled with the fact that it is indigenous to some of the more densely populated places on Earth, has caused significant conflicts with humans."
    let tigerPhoto: String = "tiger"
    
    let lionReproduction: String = "Most lionesses will have reproduced by the time they are four years of age. Lions do not mate at any specific time of year, and the females are polyestrous. As with other cats' penises, the male lion's penis has spines that point backward. During withdrawal of the penis, the spines rake the walls of the female's vagina, which may cause ovulation. A lioness may mate with more than one male when she is in heat. The average gestation period is around 110 days, the female giving birth to a litter of one to four cubs in a secluded den (which may be a thicket, a reed-bed, a cave, or some other sheltered area) usually away from the rest of the pride. She will often hunt by herself while the cubs are still helpless, staying relatively close to the thicket or den where the cubs are kept. The cubs themselves are born blind – their eyes do not open until roughly a week after birth. They weigh 1.2–2.1 kg (2.6–4.6 lb) at birth and are almost helpless, beginning to crawl a day or two after birth and walking around three weeks of age. The lioness moves her cubs to a new den site several times a month, carrying them one by one by the nape of the neck, to prevent scent from building up at a single den site and thus avoiding the attention of predators that may harm the cubs."
    let lionDescription: String = "The lion (Panthera Leo) is a species in the family Felidae, and a member of the genus Panthera. It exhibits a pronounced sexual dimorphism; males are larger than females with a typical weight range of 150 to 250 kg (331 to 551 lb) for the former and 120 to 182 kg (265 to 401 lb) for the latter. In addition, male lions have a prominent mane, which is the most recognisable feature of the species. Both sexes have hairy tufts at the end of their tails." + "Present in Africa and India, the lion typically inhabits grasslands and savannahs, but is absent in dense forests. It is usually more diurnal than other big cats, but when persecuted adapts to being active at night and at twilight. A lion pride consists of a few adult males, related females and cubs. Prides vary in size and composition from three to 20 adult lions, depending on habitat and prey availability. Females cooperate when hunting and prey mostly on large ungulates, including antelope, deer, buffalo, zebra and even giraffe."
    let lionPhoto: String = "lion"
    
    let wolfReproduction: String = "The gray wolf is generally monogamous, with mated pairs usually remaining together for life. Upon the death of one mated wolf, pairs are quickly re-established. Since males often predominate in any given wolf population, unpaired females are a rarity. If a dispersing male gray wolf is unable to establish a territory or find a mate, he mates with the daughters of already established breeding pairs from other packs. Such gray wolves are termed \"Casanova wolves\" and, unlike males from established packs, they do not form pair bonds with the females they mate with. Some gray wolf packs may have multiple breeding females this way, as is the case in Yellowstone National Park. Gray wolves also practice alloparental care, in which a wolf pair may adopt the pup or pups of another. This might take place if the original parents die or are for some reason separated from them. In addition to heterosexual behavior, homosexual behavior has been observed in gray wolves. Male gray wolves often mount each other when the highest ranking female in the pack comes into heat."
    let wolfDescription: String = "The gray wolf (Canis lupus), also known as the timber wolf, western wolf, or simply, wolf, is a canine native to the wilderness and remote areas of Eurasia and North America. It is the largest extant member of its family, with males averaging 43–45 kg (95–99 lb) and females 36–38.5 kg (79–85 lb). Like the red wolf, it is distinguished from other Canis species by its larger size and less pointed features, particularly on the ears and muzzle. Its winter fur is long and bushy and predominantly a mottled gray in color, although nearly pure white, red, and brown to black also occur. Mammal Species of the World (3rd ed., 2005), a standard reference work in zoology, recognises 38 subspecies of C. lupus."
    let wolfPhoto: String = "wolf"
    
    let cheetahReproduction: String = "Cheetahs breed throughout the year; they are induced ovulators. Females become sexually mature at 21 to 22 months of age.[19] Females are polyoestrus – they have an oestrus (\"heat\") cycle every 12 days (this can vary from 10 to 20 days),[119] each oestrus lasting one to three days. A female can give birth again after 17 to 20 months; however, on the loss of a whole litter mothers can mate again.[50] Urine-marking in males becomes more pronounced when a female in their vicinity comes into oestrus. Males fight among one another to secure access to the female; even males in a coalition may show some aggression toward one another on approaching a female.[120] One male eventually wins dominance over the others. Mating, observed mainly at night, begins with the male approaching the female, who lies down on the ground. No courtship behaviour is observed; the male immediately secures hold of the female's nape and copulation takes place. The pair then ignore each other and part ways. However, they meet and copulate a few more times within the next few days.[48][121] Polyandrous, females can mate with several males.[122] The mean number of motile sperm in a single ejaculation is nearly 25.3 million.[19]"
    let cheetahDescription: String = "The cheetah is a large cat of the subfamily Felinae that occurs in Southern, North and East Africa, and a few localities in Iran. The species is IUCN Red Listed as vulnerable, as it suffered a substantial decline in its historic range in the 20th century due to habitat loss, poaching, illegal pet trade, and conflict with humans. By 2016, the global cheetah population has been estimated at approximately 7,100 individuals in the wild. Several African countries have taken steps to improve cheetah conservation measures.[1]" +   "It is the fastest land animal. The only extant member of the genus Acinonyx, the cheetah was formally described by Johann Christian Daniel von Schreber in 1775. The cheetah is characterised by a slender body, deep chest, spotted coat, small rounded head, black tear-like streaks on the face, long thin legs and long spotted tail. Its lightly built, slender form is in sharp contrast with the robust build of the big cats, making it more similar to the cougar. The cheetah reaches nearly 70 to 90 cm (28 to 35 in) at the shoulder, and weighs 21–72 kg (46–159 lb). Though taller than the leopard, it is notably smaller than the lion. Typically yellowish tan or rufous to greyish white, the coat is uniformly covered with nearly 2,000 solid black spots."
    let cheetahPhoto: String = "cheetah"
    
    let parrotReproduction: String = "Parrots breed in response to environmental conditions, particularly during spring at the onset of the warmer months for most species where the food sources for the birds become abundant. During this time, the bodies of parrots release sex hormones that stimulates the urge of the birds to reproduce. This response to the change in the weather ensures that the birds, particularly the females have enough food while rearing their young." +
        "Most species of parrots are monogamous, sticking with just one breeding partner for their entire lives. The breeding pair remain together even during the nonbreeding season. A courtship display is performed by the males for the females before such bond between the breeding pair is formed. These displays include the \"stately walk\", the \"parade\", and the \"eye blaze\"."
    let parrotDescription: String = "Parrots, also known as psittacines are birds of the roughly 393 species in 92 genera that make up the order Psittaciformes, found in most tropical and subtropical regions. The order is subdivided into three superfamilies: the Psittacoidea (\"true\") parrots, the Cacatuoidea (cockatoos), and the Strigopoidea (New Zealand parrots). Parrots have a generally pantropical distribution with several species inhabiting temperate regions in the Southern Hemisphere, as well. The greatest diversity of parrots is in South America and Australasia." + "Characteristic features of parrots include a strong, curved bill, an upright stance, strong legs, and clawed zygodactyl feet. Many parrots are vividly coloured, and some are multi-coloured. Most parrots exhibit little or no sexual dimorphism in the visual spectrum. They form the most variably sized bird order in terms of length. The most important components of most parrots' diets are seeds, nuts, fruit, buds, and other plant material. A few species sometimes eat animals and carrion, while the lories and lorikeets are specialised for feeding on floral nectar and soft fruits. Almost all parrots nest in tree hollows (or nest boxes in captivity), and lay white eggs from which hatch altricial (helpless) young."
    let parrotPhoto: String = "parrot"
    
    let eagleReproduction: String = "An eagle is sexually mature and ready to breed at about 4 to 5 years of age. For bald eagles, the complete white head and tail are signs of sexual maturity. Golden eagles also attain their adult plumage at 4-5 years of age, when they are sexually mature and typically begin breeding." + "While courtship displays take place in flight, eagles do not mate in the air. Rather, copulation occurs on a branch or in the nest with the male mounting the female. During copulation, the cloaca of the male and female touch and sperm is transferred form the male to the female in what is known as the cloacal kiss. Copulation may occur several times a day over a period of days."
    let eagleDescription: String = "Eagles are large, powerfully built birds of prey, with heavy heads and beaks. Even the smallest eagles, such as the booted eagle (Aquila pennata), which is comparable in size to a common buzzard (Buteo buteo) or red-tailed hawk (B. jamaicensis), have relatively longer and more evenly broad wings, and more direct, faster flight – despite the reduced size of aerodynamic feathers. Most eagles are larger than any other raptors apart from some vultures. The smallest species of eagle is the South Nicobar serpent eagle (Spilornis klossi), at 450 g (0.99 lb) and 40 cm (16 in). The largest species are discussed below. Like all birds of prey, eagles have very large, hooked beaks for ripping flesh from their prey, strong, muscular legs, and powerful talons. The beak is typically heavier than that of most other birds of prey. Eagles' eyes are extremely powerful. It is estimated that the martial eagle, whose eye is more than twice as long as a human eye, has a visual acuity 3.0 to 3.6 times that of humans. This acuity enables eagles to spot potential prey from a very long distance.[2] This keen eyesight is primarily attributed to their extremely large pupils which ensure minimal diffraction (scattering) of the incoming light. The female of all known species of eagles is larger than the male.[3][4]" + "Eagles normally build their nests, called eyries, in tall trees or on high cliffs. Many species lay two eggs, but the older, larger chick frequently kills its younger sibling once it has hatched. The dominant chick tends to be a female, as they are bigger than the male. The parents take no action to stop the killing.[5][6]"
    let eaglePhoto: String = "eagle"
    
    let elephantReproduction: String = "The courtship between a male and a female elephant is short lived. They will rub their bodies on each other and even wrap trunks. The females tend to run away from the males and he will have to pursue her. This game of cat and mouse can continue for a very long time before the actual mating does occur." + "The male elephants will fan their ears more when they are ready to mate than at other times. This allows them to get their scent out there at a wider distance than before and to attract females that can become potential mates. The older males that are from 40 to 50 years of age are the most likely to breed with the females. The females are ready to breed when they are about 14 years of age."
    let elephantDescription: String = "Elephants are large mammals of the family Elephantidae and the order Proboscidea. Three species are currently recognised: the African bush elephant (Loxodonta africana), the African forest elephant (L. cyclotis), and the Asian elephant (Elephas maximus). Elephants are scattered throughout sub-Saharan Africa, South Asia, and Southeast Asia. Elephantidae is the only surviving family of the order Proboscidea; other, now extinct, members of the order include deinotheres, gomphotheres, mammoths, and mastodons." + "All elephants have several distinctive features, the most notable of which is a long trunk (also called a proboscis), used for many purposes, particularly breathing, lifting water, and grasping objects. Their incisors grow into tusks, which can serve as weapons and as tools for moving objects and digging. Elephants' large ear flaps help to control their body temperature. Their pillar-like legs can carry their great weight. African elephants have larger ears and concave backs while Asian elephants have smaller ears and convex or level backs."
    let elephantPhoto: String = "elephant"
    
    let falconReproduction: String = "Peregrines usually begin breeding at about 2 years of age. The male will put on an aerial courtship display to attract a mate to a selection of nesting sites. The female chooses. Peregrines generally mate for life, returning each year to the same area and even the same nest. However, the female will accept a new mate if the first is killed." + "There’s nothing fancy about the nests. The nest, \"scrape,\" is traditionally no more than a depression in a cliff ledge. But nowadays, possibly in response to increased human contact during captive breeding projects, many peregrines find homes in man-made structures and more populated areas, using power plant smokestacks, steeples, tall buildings and bridges."
    let falconDescription: String = "Falcons are birds of prey in the genus Falco, which includes about 40 species. Falcons are widely distributed on all continents of the world except Antarctica, though closely related raptors did occur there in the Eocene.[1]" + "Adult falcons have thin, tapered wings, which enable them to fly at high speed and change direction rapidly. Fledgling falcons, in their first year of flying, have longer flight feathers, which make their configuration more like that of a general-purpose bird such as a broad-wing. This makes flying easier while learning the exceptional skills required to be effective hunters as adults. There are many different types of falcon." + "The falcons are the largest genus in the Falconinae subfamily of Falconidae, which itself also includes another subfamily comprising caracaras and a few other species. All these birds kill with their beaks, using a \"tooth\" on the side of their beaks—unlike the hawks, eagles, and other birds of prey in the Accipitridae, which use their feet." + "The largest falcon is the gyrfalcon at up to 65 cm in length. The smallest falcons are the kestrels, of which the Seychelles kestrel measures just 25 cm. As with hawks and owls, falcons exhibit sexual dimorphism, with the females typically larger than the males, thus allowing a wider range of prey species.[2]"
    let falconPhoto: String = "falcon"
    
    let giraffeReproduction: String = "Reproduction in giraffes is broadly polygamous: a few older males mate with the fertile females. Male giraffes assess female fertility by tasting the female's urine to detect oestrus, in a multi-step process known as the flehmen response.[85][89] Males prefer young adult females over juveniles and older adults.[85] Once an oestrous female is detected, the male will attempt to court her. When courting, dominant males will keep subordinate ones at bay.[89] A courting male may lick a female's tail, rest his head and neck on her body or nudge her with his horns. During copulation, the male stands on his hind legs with his head held up and his front legs resting on the female's sides.[45]" + "Giraffe gestation lasts 400–460 days, after which a single calf is normally born, although twins occur on rare occasions.[92] The mother gives birth standing up. The calf emerges head and front legs first, having broken through the fetal membranes, and falls to the ground, severing the umbilical cord.[7] The mother then grooms the newborn and helps it stand up.[53]:40 "
    let giraffeDescription: String = "The giraffe (Giraffa) is a genus of African even-toed ungulate mammals, the tallest living terrestrial animals and the largest ruminants. The genus currently consists of one species, Giraffa camelopardalis, the type species. Seven other species are extinct, prehistoric species known from fossils. Taxonomic classifications of one to eight extant giraffe species have been described, based upon research into the mitochondrial and nuclear DNA, as well as morphological measurements of Giraffa, but the IUCN currently recognises only one species with nine subspecies." + "The giraffe's chief distinguishing characteristics are its extremely long neck and legs, its horn-like ossicones, and its distinctive coat patterns. It is classified under the family Giraffidae, along with its closest extant relative, the okapi. Its scattered range extends from Chad in the north to South Africa in the south, and from Niger in the west to Somalia in the east. Giraffes usually inhabit savannahs and woodlands. Their food source is leaves, fruits and flowers of woody plants, primarily acacia species, which they browse at heights most other herbivores cannot reach. They may be preyed on by lions, leopards, spotted hyenas and African wild dogs. Giraffes live in herds of related females and their offspring, or bachelor herds of unrelated adult males, but are gregarious and may gather in large aggregations. Males establish social hierarchies through \"necking\", which are combat bouts where the neck is used as a weapon. Dominant males gain mating access to females, which bear the sole responsibility for raising the young."
    let giraffePhoto: String = "giraffe"
    
    let zebraReproduction: String = "Female zebras mature earlier than the males, and a mare may have her first foal by the age of three. Males are not able to breed until the age of five or six. Mares may give birth to one foal every twelve months. She nurses the foal for up to a year. Like horses, zebras are able to stand, walk and suckle shortly after they are born. A zebra foal is brown and white instead of black and white at birth." + "Plains and mountain zebra foals are protected by their mothers, as well as the head stallion and the other mares in their group. Grévy's zebra foals have only their mother as a regular protector, since, as noted above, Grévy's zebra groups often disband after a few months."
    let zebraDescription: String = "Zebras (/ˈziːbrə/ ZEE-brə or British English: /ˈzɛbrə/ ZEB-rə)[1] are several species of African equids (horse family) united by their distinctive black and white striped coats. Their stripes come in different patterns, unique to each individual. They are generally social animals that live in small harems to large herds. Unlike their closest relatives, horses and donkeys, zebras have never been truly domesticated." + "There are three species of zebras: the plains zebra, the mountain zebra and the Grévy's zebra. The plains zebra and the mountain zebra belong to the subgenus Hippotigris, but Grévy's zebra is the sole species of subgenus Dolichohippus. The latter resembles an ass, to which zebras are closely related, while the former two look more horse-like. All three belong to the genus Equus, along with other living equids."
    let zebraPhoto: String = "zebra"
    
    let hippopotamusReproduction: String = "Female hippos reach sexual maturity at five to six years and have a gestation period of eight months.[75] A study of endocrine systems revealed that female hippopotamuses may begin puberty as early as three or four years.[76] Males reach maturity at around 7.5 yr. A study of hippopotami reproductive behaviour in Uganda showed that peak conceptions occurred during the end of the wet season in the summer, and peak births occurred toward the beginning of the wet season in late winter. This is because of the female's oestrous cycle; as with most large mammals, male hippopotamus spermatozoa is active year-round. Studies of hippos in Zambia and South Africa also showed evidence of births occurring at the start of the wet season.[7]:60–61 After becoming pregnant, a female hippopotamus will typically not begin ovulation again for 17 months.[76]" + "Mating occurs in the water, with the female submerged for most of the encounter,[7]:63 her head emerging periodically to draw breath. Female hippos isolate themselves to give birth and return within 10–14 days.[26] Baby hippos are born underwater at a weight between 25 and 50 kg (55 and 110 lb) and an average length of around 127 cm (4.17 ft), and must swim to the surface to take their first breaths"
    let hippopotamusDescription: String = "The common hippopotamus (Hippopotamus amphibius), or hippo, is a large, mostly herbivorous, semiaquatic mammal native to sub-Saharan Africa, and one of only two extant species in the family Hippopotamidae, the other being the pygmy hippopotamus (Choeropsis liberiensis or Hexaprotodon liberiensis). The name comes from the ancient Greek for \"river horse\" (ἱπποπόταμος). After the elephant and rhinoceros, the common hippopotamus is the third-largest type of land mammal and the heaviest extant artiodactyl. Despite their physical resemblance to pigs and other terrestrial even-toed ungulates, the closest living relatives of the Hippopotamidae are cetaceans (whales, dolphins, porpoises, etc.) from which they diverged about 55 million years ago."
    let hippopotamusPhoto: String = "hippopotamus"
    
    let horseReproduction: String = "Gestation lasts approximately 340 days, with an average range 320–370 days,[49] and usually results in one foal; twins are rare.[50] Horses are a precocial species, and foals are capable of standing and running within a short time following birth.[51] Foals are usually born in the spring. The estrous cycle of a mare occurs roughly every 19–22 days and occurs from early spring into autumn. Most mares enter an anestrus period during the winter and thus do not cycle in this period.[52] Foals are generally weaned from their mothers between four and six months of age.[53]" + "Horses, particularly colts, sometimes are physically capable of reproduction at about 18 months, but domesticated horses are rarely allowed to breed before the age of three, especially females.[54] Horses four years old are considered mature, although the skeleton normally continues to develop until the age of six; maturation also depends on the horse's size, breed, sex, and quality of care. Larger horses have larger bones; therefore, not only do the bones take longer to form bone tissue, but the epiphyseal plates are larger and take longer to convert from cartilage to bone. These plates convert after the other parts of the bones, and are crucial to development.[55]"
    let horseDescription: String = "The horse (Equus ferus caballus)[2][3] is one of two extant subspecies of Equus ferus. It is an odd-toed ungulate mammal belonging to the taxonomic family Equidae. The horse has evolved over the past 45 to 55 million years from a small multi-toed creature, Eohippus, into the large, single-toed animal of today. Humans began to domesticate horses around 4000 BC, and their domestication is believed to have been widespread by 3000 BC. Horses in the subspecies caballus are domesticated, although some domesticated populations live in the wild as feral horses. These feral populations are not true wild horses, as this term is used to describe horses that have never been domesticated, such as the endangered Przewalski's horse, a separate subspecies, and the only remaining true wild horse. There is an extensive, specialized vocabulary used to describe equine-related concepts, covering everything from anatomy to life stages, size, colors, markings, breeds, locomotion, and behavior."
    let horsePhoto: String = "horse"
    
    let komodoReproduction: String = "Mating occurs between May and August, with the eggs laid in September.[11] During this period, males fight over females and territory by grappling with one another upon their hind legs, with the loser eventually being pinned to the ground. These males may vomit or defecate when preparing for the fight.[29] The winner of the fight will then flick his long tongue at the female to gain information about her receptivity.[8] Females are antagonistic and resist with their claws and teeth during the early phases of courtship. Therefore, the male must fully restrain the female during coitus to avoid being hurt. Other courtship displays include males rubbing their chins on the female, hard scratches to the back, and licking.[52] Copulation occurs when the male inserts one of his hemipenes into the female's cloaca.[30] Komodo dragons may be monogamous and form \"pair bonds\", a rare behavior for lizards."
    let komodoDescription: String = "The Komodo dragon[4] (Varanus komodoensis), also known as the Komodo monitor, is a species of lizard found in the Indonesian islands of Komodo, Rinca, Flores, Gili Motang, and Padar.[5] A member of the monitor lizard family Varanidae, it is the largest living species of lizard, growing to a maximum length of 3 metres (10 ft) in rare cases and weighing up to approximately 70 kilograms (150 lb).[5]" + "Their unusually large size has been attributed to island gigantism, since no other carnivorous animals fill the niche on the islands where they live.[6][7] However, recent research suggests the large size of Komodo dragons may be better understood as representative of a relict population of very large varanid lizards that once lived across Indonesia and Australia, most of which, along with other megafauna, died out after the Pleistocene (likely as a result of human activity).[1] Fossils very similar to V. komodoensis have been found in Australia dating to greater than 3.8 million years ago, and its body size remained stable on Flores, one of the handful of Indonesian islands where it is currently found, over the last 900,000 years, \"a time marked by major faunal turnovers, extinction of the island's megafauna, and the arrival of early hominids by 880 ka [kiloannums]."
    let komodoPhoto: String = "komodo"
    
    let leopardReproduction: String = "Depending on the region, leopards may mate all year round. In Manchuria and Siberia, they mate during January and February. The estrous cycle lasts about 46 days and the female usually is in heat for 6–7 days.[120] Gestation lasts for 90 to 105 days.[121] Cubs are usually born in a litter of 2–4 cubs.[122] Mortality of cubs is estimated at 41–50% during the first year.[95]" + "Females give birth in a cave, crevice among boulders, hollow tree, or thicket to make a den. Cubs are born with closed eyes, which open four to nine days after birth.[80] The fur of the young tends to be longer and thicker than that of adults. Their pelage is also more gray in colour with less defined spots. Around three months of age, the young begin to follow the mother on hunts. At one year of age, leopard young can probably fend for themselves, but remain with the mother for 18–24 months.[72]"
    let leopardDescription: String = "The common name \"leopard\" is a Greek compound of λέων leōn (\"lion\") and πάρδος pardos (\"male panther\"). The name reflects the fact that in antiquity, a leopard was believed to be a hybrid of a lion and a panther. The Greek word is related to Sanskrit पृदाकु pṛdāku (\"snake\", \"tiger\" or \"panther\"), and probably derives from a Mediterranean language, such as Egyptian.[12][13] The name was first used in the 13th century.[11] Other vernacular names for the leopard include graupanther, panther and several regional names such as tendwa in India.[14] The term \"black panther\" refers to leopards with melanistic genes.[15] A term for the leopard used in Old English and later, but now very uncommon, is \"pard\"."
    let leopardPhoto: String = "leopard"
    
    let monkeyReproduction: String = "The reproduction process can be full of rituals for the Monkey. Those rituals will depend on the species though. They generally will become mature between 4 and 5 years of age. The females are attracted to the biggest and strongest males. Those are going to be the leaders of the group. They are the only ones that will breed within that group." + "This is why there can be plenty of conflict in a group of Monkeys. The males may fight with each other to be the dominant one. Males may leave a group when they mature to go create their own that they will be in charge of. A lone male may challenge the leader of a given group and then take over if he winds."
    let monkeyDescription: String = "Monkeys are non-hominoid simians, generally possessing tails and consisting of about 260 known living species. Many monkey species are tree-dwelling (arboreal), although there are species that live primarily on the ground, such as baboons. Most species are also active during the day (diurnal). Monkeys are generally considered to be intelligent, particularly Old World monkeys." + "There are two major types of monkey: New World monkeys (platyrrhines) from South and Central America and Old World monkeys (catarrhines of the superfamily Cercopithecoidea) from Africa and Asia. Apes (hominoids)—consisting of gibbons, orangutans, gorillas, chimpanzees, and humans—are also catarrhines but are classically distinguished from monkeys"
    let monkeyPhoto: String = "monkey"
    
    let owlReproduction: String = "Owl eggs typically have a white colour and an almost spherical shape, and range in number from a few to a dozen, depending on species and the particular season; for most, three or four is the more common number. In at least one species, female owls do not mate with the same male for a lifetime. Female burrowing owls commonly travel and find other mates, while the male stays in his territory and mates with other females."
    let owlDescription: String = "Owls are birds from the order Strigiformes, which includes about 200 species of mostly solitary and nocturnal birds of prey typified by an upright stance, a large, broad head, binocular vision, binaural hearing, sharp talons, and feathers adapted for silent flight. Exceptions include the diurnal northern hawk-owl and the gregarious burrowing owl." + "Owls hunt mostly small mammals, insects, and other birds, although a few species specialize in hunting fish. They are found in all regions of the Earth except Antarctica and some remote islands. Owls are divided into two families: the true (or typical) owl family, Strigidae, and the barn-owl family, Tytonidae."
    let owlPhoto: String = "owl"
    
    let rabbitReproduction: String = "A rabbit may normally start breeding at the age of 6 months for the small to medium size breeds and 8 to 9 months for the heavy breeds. The gestation period (time between breeding and kindling) is 31 days. After the doe has kindled, I normally re-breed her at 6 weeks and wean the litter at 5-7 weeks. This cycle continues until she is about 4 years old or until her production is unsatisfactory."
    let rabbitDescription: String = "Rabbits are small mammals in the family Leporidae of the order Lagomorpha (along with the hare and the pika). Oryctolagus cuniculus includes the European rabbit species and its descendants, the world's 305 breeds[1] of domestic rabbit. Sylvilagus includes thirteen wild rabbit species, among them the seven types of cottontail. The European rabbit, which has been introduced on every continent except Antarctica, is familiar throughout the world as a wild prey animal and as a domesticated form of livestock and pet. With its widespread effect on ecologies and cultures, the rabbit (or bunny) is, in many areas of the world, a part of daily life—as food, clothing, and companion, and as a source of artistic inspiration."
    let rabbitPhoto: String = "rabbit"
    
    let redpandaReproduction: String = "Red pandas are able to reproduce at around 18 months of age, and are fully mature at two to three years. Adults rarely interact in the wild except to mate. Both sexes may mate with more than one partner during the mating season from mid-January to early March.[24] A few days before birth, females begin to collect material, such as brushwood, grass, and leaves, to build a nest, which is normally located in a hollow tree or a rock crevice. After a gestation period of 112 to 158 days, the female gives birth in mid-June to late July to one to four (usually 1–2) blind and deaf cubs weighing 110 to 130 g (3.9 to 4.6 oz) each"
    let redpandaDescription: String = "The red panda (Ailurus fulgens), also called the lesser panda, the red bear-cat, and the red cat-bear, is a mammal native to the eastern Himalayas and southwestern China.[1] It has reddish-brown fur, a long, shaggy tail, and a waddling gait due to its shorter front legs; it is roughly the size of a domestic cat, though with a longer body and somewhat heavier. It is arboreal, feeds mainly on bamboo, but also eats eggs, birds, and insects. It is a solitary animal, mainly active from dusk to dawn, and is largely sedentary during the day." + "The red panda has been classified as endangered by the IUCN, because its wild population is estimated at less than 10,000 mature individuals and continues to decline due to habitat loss and fragmentation, poaching, and inbreeding depression, although red pandas are protected by national laws in their range countries."
    let redpandaPhoto: String = "red-panda"
    
    let tortoiseReproduction: String = "Tortoises in the wild usually have stronger mating urges during the spring, after hibernation, though until mid-summer. This is somewhat dependant on the tortoise’s geographical location. In some parts of the Mediterranean coastline, tortoises can often be found mating at chance intervals throughout the year." + "Once the male has mounted the female, it succeeds in keeping the stance by a combination of balancing on his rear legs and by possessing a more concave plastron than the female. This allows the curvature of the females humped carapace to sit nicely underneath him. After adjusting his positioning, the male shuffles and wiggles his cloaca (tail), until his ventral opening lines up with the females opening. The male then erects his penis (known as a hemi-penis)." + "One single mating results in up to 30 eggs being fertilised, although these will not be laid together in one clutch. Tortoise gestation is in fact quite remarkable with regards to the time scales involved, because the female can vary the length of the gestation period (from fertilisation to laying) depending on the environmental and nesting conditions. It is believed that tortoises can lay fertile eggs up to four years after mating, although fertility reduces significantly after each season."
    let tortoiseDescription: String = "Tortoises (/ˈtɔːr.təs.ɪz/) are a family, Testudinidae. Testudinidae is a Family under the order Testudines and suborder Cryptodira. There are fourteen extant families of the order Testudines, an order of reptile commonly known as turtles, tortoises, and terrapins. The suborder Cryptodira (Greek: hidden neck) is a suborder of Testudines that includes most living tortoises and turtles. Cryptodira differ from Pluerodia (side-neck turtles) in that they lower their necks and pull the heads straight back into the shells, instead of folding their necks sideways along the body under the shells' marginals.The testudines are some of the most ancient reptiles alive."
    let tortoisePhoto: String = "tortoise"
    
    let sealionReproduction: String = "Sea lions, with three groups of pinnipeds, have multiple breeding methods and habits over their families but they remain relatively universal. Otariids, or eared sea lions, raise their young, mate, and rest in more earthly land or ice habitats. Their abundance and haul-out behavior have a direct effect on their on land breeding activity. Their seasonal abundance trend correlates with their breeding period between the austral summer of January to March. Their rookeries populate with newborn pups as well as male and female otariids that remain to defend their territories. At the end of the breeding period males disseminate for food and rest while females remain for nurturing. Other points in the year consist of a mix of ages and genders in the rookeries with haul-out patterns varying monthly."
    let sealionDescription: String = "Sea lions are sea mammals characterized by external ear flaps, long foreflippers, the ability to walk on all fours, short, thick hair, and a big chest and belly. Together with the fur seals, they comprise the family Otariidae, eared seals, which contains six extant and one extinct species (the Japanese sea lion) in five genera. Their range extends from the subarctic to tropical waters of the global ocean in both the Northern and Southern Hemispheres, with the notable exception of the northern Atlantic Ocean."
    let sealionPhoto: String = "sea-lion"
    
    //https://a-z-animals.com/animals/lion/
    //https://www.thetoptens.com/wild-animals/
    //https://www.thoughtco.com/the-main-animal-characteristics-4086505
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //appending animal item to the animalsArray[]
        animalsArray.append(AnimalClassFile(animalCode: "FAK0001", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Lion", animalLifeSpan: "2-3 years", animalReproduction: "\(lionReproduction)", animalDescription: "\(lionDescription)",  animalPhoto: lionPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0002", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Tiger", animalLifeSpan: "15-25 years", animalReproduction: "\(tigerReproduction)", animalDescription: "\(tigerDescription)",  animalPhoto: tigerPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0003", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Wolf", animalLifeSpan: "10-12 years", animalReproduction: "\(wolfReproduction)", animalDescription: "\(wolfDescription)",  animalPhoto: wolfPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0004", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Cheetah", animalLifeSpan: "10-12 years", animalReproduction: "\(cheetahReproduction)", animalDescription: "\(cheetahDescription)",  animalPhoto: cheetahPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0005", animalClass: "Aves", animalOrder: "Psittaciformes", animalName: "Parrot", animalLifeSpan: "40-80 years", animalReproduction: "\(parrotReproduction)", animalDescription: "\(parrotDescription)",  animalPhoto: parrotPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0006", animalClass: "Aves", animalOrder: "Falconiformes", animalName: "Eagle", animalLifeSpan: "15-30 years", animalReproduction: "\(eagleReproduction)", animalDescription: "\(eagleDescription)",  animalPhoto: eaglePhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0007", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Elephant", animalLifeSpan: "55-70 years", animalReproduction: "\(elephantReproduction)", animalDescription: "\(elephantDescription)",  animalPhoto: elephantPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0008", animalClass: "Aves", animalOrder: "Falconiformes", animalName: "Falcon", animalLifeSpan: "12-18 years", animalReproduction: "\(falconReproduction)", animalDescription: "\(falconDescription)",  animalPhoto: falconPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0009", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Giraffe", animalLifeSpan: "20-25 years", animalReproduction: "\(giraffeReproduction)", animalDescription: "\(giraffeDescription)",  animalPhoto: giraffePhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0010", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Zebra", animalLifeSpan: "10-12 years", animalReproduction: "\(zebraReproduction)", animalDescription: "\(zebraDescription)",  animalPhoto: zebraPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0011", animalClass: "Mammalia", animalOrder: "Artiodactyla", animalName: "Hippopotamus", animalLifeSpan: "40-15 years", animalReproduction: "\(hippopotamusReproduction)", animalDescription: "\(hippopotamusDescription)",  animalPhoto: hippopotamusPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0012", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Horse", animalLifeSpan: "25-30 years", animalReproduction: "\(horseReproduction)", animalDescription: "\(horseDescription)",  animalPhoto: horsePhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0013", animalClass: "Reptilia", animalOrder: "Squamata", animalName: "Komodo Dragon", animalLifeSpan: "25-40 years", animalReproduction: "\(komodoReproduction)", animalDescription: "\(komodoDescription)",  animalPhoto: komodoPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0014", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Leopard", animalLifeSpan: "10-15 years", animalReproduction: "\(leopardReproduction)", animalDescription: "\(leopardDescription)",  animalPhoto: leopardPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0015", animalClass: "Mammalia", animalOrder: "Primatesowl", animalName: "Monkey", animalLifeSpan: "10-30 years", animalReproduction: "\(monkeyReproduction)", animalDescription: "\(monkeyDescription)",  animalPhoto: monkeyPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0016", animalClass: "Aves", animalOrder: "Strigiformes", animalName: "Towny Owl", animalLifeSpan: "4-6 years", animalReproduction: "\(owlReproduction)", animalDescription: "\(owlDescription)",  animalPhoto: owlPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0017", animalClass: "Mammalia", animalOrder: "Lagomorpha", animalName: "Rabbit", animalLifeSpan: "4-8 years", animalReproduction: "\(rabbitReproduction)", animalDescription: "\(rabbitDescription)",  animalPhoto: rabbitPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0018", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Red-Panda", animalLifeSpan: "8-12 years", animalReproduction: "\(redpandaReproduction)", animalDescription: "\(redpandaDescription)",  animalPhoto: redpandaPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0019", animalClass: "Reptilia", animalOrder: "Testudinidae", animalName: "Tortoise", animalLifeSpan: "30-150 years", animalReproduction: "\(tortoiseReproduction)", animalDescription: "\(tortoiseDescription)",  animalPhoto: tortoisePhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0020", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Sea-Lion", animalLifeSpan: "15-22 years", animalReproduction: "\(sealionReproduction)", animalDescription: "\(sealionDescription)",  animalPhoto: sealionPhoto))

        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animalsArray.count
    }

    //var animal_ID = ""
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifierFortressAnimals", for: indexPath) as! AnimalsTableViewCell

        //set values to the cell controls from the array
       // cell.animalNameLabel.text = animalsArray[indexPath.row].animalName?.uppercased()
       // cell.animalClassLabel.text = "Class: " + animalsArray[indexPath.row].animalClass!
      //  cell.animalMotilityLabel.text = "Life Span: " + animalsArray[indexPath.row].animalLifeSpan!
       // cell.animalPhotoImageView.image = UIImage(named: animalsArray[indexPath.row].animalPhoto!)
        
        
        cell.animalNameLabel.text = animalsArray[indexPath.row].animalName?.uppercased()
        cell.animalClassLabel.text = "Class: " + animalsArray[indexPath.row].animalClass!
        cell.animalMotilityLabel.text = "Life Span: " + animalsArray[indexPath.row].animalLifeSpan!
        cell.animalPhotoImageView.image = UIImage(named: animalsArray[indexPath.row].animalPhoto!)
        //let animal_ID = animalsArray[indexPath.row].animalCode
        
        //cell.animalPhotoImageView.image = animalsArray[indexPath.row].animalPhoto
        /*if animal_ID == "FAK0001" {
            cell.animalPhotoImageView.image = UIImage(named: "lion")
        }else if animal_ID == "FAK0002" {
            cell.animalPhotoImageView.image = UIImage(named: "tiger")
        }else if animal_ID == "FAK0003" {
            cell.animalPhotoImageView.image = UIImage(named: "wolf")
        }else if animal_ID == "FAK0004" {
            cell.animalPhotoImageView.image = UIImage(named: "cheetah")
        }else if animal_ID == "FAK0005" {
            cell.animalPhotoImageView.image = UIImage(named: "parrot")
        }else if animal_ID == "FAK0006" {
            cell.animalPhotoImageView.image = UIImage(named: "eagle")
        }else if animal_ID == "FAK0007" {
            cell.animalPhotoImageView.image = UIImage(named: "elephant")
        }else if animal_ID == "FAK0008" {
            cell.animalPhotoImageView.image = UIImage(named: "falcon")
        }else if animal_ID == "FAK0009" {
            cell.animalPhotoImageView.image = UIImage(named: "giraffe")
        }else if animal_ID == "FAK0010" {
            cell.animalPhotoImageView.image = UIImage(named: "zebra")
        }else if animal_ID == "FAK0011" {
            cell.animalPhotoImageView.image = UIImage(named: "hippopotamus")
        }else if animal_ID == "FAK0012" {
            cell.animalPhotoImageView.image = UIImage(named: "horse")
        }else if animal_ID == "FAK0013" {
            cell.animalPhotoImageView.image = UIImage(named: "komodo")
        }else if animal_ID == "FAK0014" {
            cell.animalPhotoImageView.image = UIImage(named: "leopard")
        }else if animal_ID == "FAK0015" {
            cell.animalPhotoImageView.image = UIImage(named: "monkey")
        }else if animal_ID == "FAK0016" {
            cell.animalPhotoImageView.image = UIImage(named: "owl")
        }else if animal_ID == "FAK0017" {
            cell.animalPhotoImageView.image = UIImage(named: "rabbit")
        }else if animal_ID == "FAK0018" {
            cell.animalPhotoImageView.image = UIImage(named: "red-panda")
        }else if animal_ID == "FAK0019" {
            cell.animalPhotoImageView.image = UIImage(named: "tortoise")
        }else if animal_ID == "FAK0020" {
            cell.animalPhotoImageView.image = UIImage(named: "sea-lion")
        }*/
        
        return cell
    }
    
    var selectedCellIndex : IndexPath?
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCellIndex = indexPath
        self.performSegue(withIdentifier: "backToAnimalsListing", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let animalsDetailViewCont =  segue.destination as! AnimalsDetailViewController
        animalsDetailViewCont.animalsClassInstance = animalsArray[(selectedCellIndex?.row)!]
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
