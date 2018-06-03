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
    
    let tigerDescription = "The tiger (Panthera tigris) is the largest cat species, most recognizable for its pattern of dark vertical stripes on reddish-orange fur with a lighter underside. The species is classified in the genus Panthera with the lion, leopard, jaguar, and snow leopard. It is an apex predator, primarily preying on ungulates such as deer and bovids. It is territorial and generally a solitary but social predator, often requiring large contiguous areas of habitat that support its prey requirements. This, coupled with the fact that it is indigenous to some of the more densely populated places on Earth, has caused significant conflicts with humans."
    let tigerPhoto: String = "tiger"
    

    let lionDescription: String = "The lion (Panthera Leo) is a species in the family Felidae, and a member of the genus Panthera. It exhibits a pronounced sexual dimorphism; males are larger than females with a typical weight range of 150 to 250 kg (331 to 551 lb) for the former and 120 to 182 kg (265 to 401 lb) for the latter. In addition, male lions have a prominent mane, which is the most recognisable feature of the species. Both sexes have hairy tufts at the end of their tails." + "Present in Africa and India, the lion typically inhabits grasslands and savannahs, but is absent in dense forests. It is usually more diurnal than other big cats, but when persecuted adapts to being active at night and at twilight. A lion pride consists of a few adult males, related females and cubs. Prides vary in size and composition from three to 20 adult lions, depending on habitat and prey availability. Females cooperate when hunting and prey mostly on large ungulates, including antelope, deer, buffalo, zebra and even giraffe."
    let lionPhoto: String = "lion"
  
    let wolfDescription: String = "The gray wolf (Canis lupus), also known as the timber wolf, western wolf, or simply, wolf, is a canine native to the wilderness and remote areas of Eurasia and North America. It is the largest extant member of its family, with males averaging 43–45 kg (95–99 lb) and females 36–38.5 kg (79–85 lb). Like the red wolf, it is distinguished from other Canis species by its larger size and less pointed features, particularly on the ears and muzzle. Its winter fur is long and bushy and predominantly a mottled gray in color, although nearly pure white, red, and brown to black also occur. Mammal Species of the World (3rd ed., 2005), a standard reference work in zoology, recognises 38 subspecies of C. lupus."
    let wolfPhoto: String = "wolf"
 
    let cheetahDescription: String = "The cheetah is a large cat of the subfamily Felinae that occurs in Southern, North and East Africa, and a few localities in Iran. The species is IUCN Red Listed as vulnerable, as it suffered a substantial decline in its historic range in the 20th century due to habitat loss, poaching, illegal pet trade, and conflict with humans. By 2016, the global cheetah population has been estimated at approximately 7,100 individuals in the wild. Several African countries have taken steps to improve cheetah conservation measures.[1]" +   "It is the fastest land animal. The only extant member of the genus Acinonyx, the cheetah was formally described by Johann Christian Daniel von Schreber in 1775. The cheetah is characterised by a slender body, deep chest, spotted coat, small rounded head, black tear-like streaks on the face, long thin legs and long spotted tail. Its lightly built, slender form is in sharp contrast with the robust build of the big cats, making it more similar to the cougar. The cheetah reaches nearly 70 to 90 cm (28 to 35 in) at the shoulder, and weighs 21–72 kg (46–159 lb). Though taller than the leopard, it is notably smaller than the lion. Typically yellowish tan or rufous to greyish white, the coat is uniformly covered with nearly 2,000 solid black spots."
    let cheetahPhoto: String = "cheetah"

    let parrotDescription: String = "Parrots, also known as psittacines are birds of the roughly 393 species in 92 genera that make up the order Psittaciformes, found in most tropical and subtropical regions. The order is subdivided into three superfamilies: the Psittacoidea (\"true\") parrots, the Cacatuoidea (cockatoos), and the Strigopoidea (New Zealand parrots). Parrots have a generally pantropical distribution with several species inhabiting temperate regions in the Southern Hemisphere, as well. The greatest diversity of parrots is in South America and Australasia." + "Characteristic features of parrots include a strong, curved bill, an upright stance, strong legs, and clawed zygodactyl feet. Many parrots are vividly coloured, and some are multi-coloured. Most parrots exhibit little or no sexual dimorphism in the visual spectrum. They form the most variably sized bird order in terms of length. The most important components of most parrots' diets are seeds, nuts, fruit, buds, and other plant material. A few species sometimes eat animals and carrion, while the lories and lorikeets are specialised for feeding on floral nectar and soft fruits. Almost all parrots nest in tree hollows (or nest boxes in captivity), and lay white eggs from which hatch altricial (helpless) young."
    let parrotPhoto: String = "parrot"
    
    let eagleDescription: String = "Eagles are large, powerfully built birds of prey, with heavy heads and beaks. Even the smallest eagles, such as the booted eagle (Aquila pennata), which is comparable in size to a common buzzard (Buteo buteo) or red-tailed hawk (B. jamaicensis), have relatively longer and more evenly broad wings, and more direct, faster flight – despite the reduced size of aerodynamic feathers. Most eagles are larger than any other raptors apart from some vultures. The smallest species of eagle is the South Nicobar serpent eagle (Spilornis klossi), at 450 g (0.99 lb) and 40 cm (16 in). The largest species are discussed below. Like all birds of prey, eagles have very large, hooked beaks for ripping flesh from their prey, strong, muscular legs, and powerful talons. The beak is typically heavier than that of most other birds of prey. Eagles' eyes are extremely powerful. It is estimated that the martial eagle, whose eye is more than twice as long as a human eye, has a visual acuity 3.0 to 3.6 times that of humans. This acuity enables eagles to spot potential prey from a very long distance.[2] This keen eyesight is primarily attributed to their extremely large pupils which ensure minimal diffraction (scattering) of the incoming light. The female of all known species of eagles is larger than the male.[3][4]" + "Eagles normally build their nests, called eyries, in tall trees or on high cliffs. Many species lay two eggs, but the older, larger chick frequently kills its younger sibling once it has hatched. The dominant chick tends to be a female, as they are bigger than the male. The parents take no action to stop the killing.[5][6]"
    let eaglePhoto: String = "eagle"
    
    let elephantDescription: String = "Elephants are large mammals of the family Elephantidae and the order Proboscidea. Three species are currently recognised: the African bush elephant (Loxodonta africana), the African forest elephant (L. cyclotis), and the Asian elephant (Elephas maximus). Elephants are scattered throughout sub-Saharan Africa, South Asia, and Southeast Asia. Elephantidae is the only surviving family of the order Proboscidea; other, now extinct, members of the order include deinotheres, gomphotheres, mammoths, and mastodons." + "All elephants have several distinctive features, the most notable of which is a long trunk (also called a proboscis), used for many purposes, particularly breathing, lifting water, and grasping objects. Their incisors grow into tusks, which can serve as weapons and as tools for moving objects and digging. Elephants' large ear flaps help to control their body temperature. Their pillar-like legs can carry their great weight. African elephants have larger ears and concave backs while Asian elephants have smaller ears and convex or level backs."
    let elephantPhoto: String = "elephant"
    
    let falconDescription: String = "Falcons are birds of prey in the genus Falco, which includes about 40 species. Falcons are widely distributed on all continents of the world except Antarctica, though closely related raptors did occur there in the Eocene.[1]" + "Adult falcons have thin, tapered wings, which enable them to fly at high speed and change direction rapidly. Fledgling falcons, in their first year of flying, have longer flight feathers, which make their configuration more like that of a general-purpose bird such as a broad-wing. This makes flying easier while learning the exceptional skills required to be effective hunters as adults. There are many different types of falcon." + "The falcons are the largest genus in the Falconinae subfamily of Falconidae, which itself also includes another subfamily comprising caracaras and a few other species. All these birds kill with their beaks, using a \"tooth\" on the side of their beaks—unlike the hawks, eagles, and other birds of prey in the Accipitridae, which use their feet." + "The largest falcon is the gyrfalcon at up to 65 cm in length. The smallest falcons are the kestrels, of which the Seychelles kestrel measures just 25 cm. As with hawks and owls, falcons exhibit sexual dimorphism, with the females typically larger than the males, thus allowing a wider range of prey species.[2]"
    let falconPhoto: String = "falcon"

    let giraffeDescription: String = "The giraffe (Giraffa) is a genus of African even-toed ungulate mammals, the tallest living terrestrial animals and the largest ruminants. The genus currently consists of one species, Giraffa camelopardalis, the type species. Seven other species are extinct, prehistoric species known from fossils. Taxonomic classifications of one to eight extant giraffe species have been described, based upon research into the mitochondrial and nuclear DNA, as well as morphological measurements of Giraffa, but the IUCN currently recognises only one species with nine subspecies." + "The giraffe's chief distinguishing characteristics are its extremely long neck and legs, its horn-like ossicones, and its distinctive coat patterns. It is classified under the family Giraffidae, along with its closest extant relative, the okapi. Its scattered range extends from Chad in the north to South Africa in the south, and from Niger in the west to Somalia in the east. Giraffes usually inhabit savannahs and woodlands. Their food source is leaves, fruits and flowers of woody plants, primarily acacia species, which they browse at heights most other herbivores cannot reach. They may be preyed on by lions, leopards, spotted hyenas and African wild dogs. Giraffes live in herds of related females and their offspring, or bachelor herds of unrelated adult males, but are gregarious and may gather in large aggregations. Males establish social hierarchies through \"necking\", which are combat bouts where the neck is used as a weapon. Dominant males gain mating access to females, which bear the sole responsibility for raising the young."
    let giraffePhoto: String = "giraffe"
    
    let zebraDescription: String = "Zebras (/ˈziːbrə/ ZEE-brə or British English: /ˈzɛbrə/ ZEB-rə)[1] are several species of African equids (horse family) united by their distinctive black and white striped coats. Their stripes come in different patterns, unique to each individual. They are generally social animals that live in small harems to large herds. Unlike their closest relatives, horses and donkeys, zebras have never been truly domesticated." + "There are three species of zebras: the plains zebra, the mountain zebra and the Grévy's zebra. The plains zebra and the mountain zebra belong to the subgenus Hippotigris, but Grévy's zebra is the sole species of subgenus Dolichohippus. The latter resembles an ass, to which zebras are closely related, while the former two look more horse-like. All three belong to the genus Equus, along with other living equids."
    let zebraPhoto: String = "zebra"
    
    let hippopotamusDescription: String = "The common hippopotamus (Hippopotamus amphibius), or hippo, is a large, mostly herbivorous, semiaquatic mammal native to sub-Saharan Africa, and one of only two extant species in the family Hippopotamidae, the other being the pygmy hippopotamus (Choeropsis liberiensis or Hexaprotodon liberiensis). The name comes from the ancient Greek for \"river horse\" (ἱπποπόταμος). After the elephant and rhinoceros, the common hippopotamus is the third-largest type of land mammal and the heaviest extant artiodactyl. Despite their physical resemblance to pigs and other terrestrial even-toed ungulates, the closest living relatives of the Hippopotamidae are cetaceans (whales, dolphins, porpoises, etc.) from which they diverged about 55 million years ago."
    let hippopotamusPhoto: String = "hippopotamus"
    
    let horseDescription: String = "The horse (Equus ferus caballus)[2][3] is one of two extant subspecies of Equus ferus. It is an odd-toed ungulate mammal belonging to the taxonomic family Equidae. The horse has evolved over the past 45 to 55 million years from a small multi-toed creature, Eohippus, into the large, single-toed animal of today. Humans began to domesticate horses around 4000 BC, and their domestication is believed to have been widespread by 3000 BC. Horses in the subspecies caballus are domesticated, although some domesticated populations live in the wild as feral horses. These feral populations are not true wild horses, as this term is used to describe horses that have never been domesticated, such as the endangered Przewalski's horse, a separate subspecies, and the only remaining true wild horse. There is an extensive, specialized vocabulary used to describe equine-related concepts, covering everything from anatomy to life stages, size, colors, markings, breeds, locomotion, and behavior."
    let horsePhoto: String = "horse"
    
    let komodoDescription: String = "The Komodo dragon[4] (Varanus komodoensis), also known as the Komodo monitor, is a species of lizard found in the Indonesian islands of Komodo, Rinca, Flores, Gili Motang, and Padar.[5] A member of the monitor lizard family Varanidae, it is the largest living species of lizard, growing to a maximum length of 3 metres (10 ft) in rare cases and weighing up to approximately 70 kilograms (150 lb).[5]" + "Their unusually large size has been attributed to island gigantism, since no other carnivorous animals fill the niche on the islands where they live.[6][7] However, recent research suggests the large size of Komodo dragons may be better understood as representative of a relict population of very large varanid lizards that once lived across Indonesia and Australia, most of which, along with other megafauna, died out after the Pleistocene (likely as a result of human activity).[1] Fossils very similar to V. komodoensis have been found in Australia dating to greater than 3.8 million years ago, and its body size remained stable on Flores, one of the handful of Indonesian islands where it is currently found, over the last 900,000 years, \"a time marked by major faunal turnovers, extinction of the island's megafauna, and the arrival of early hominids by 880 ka [kiloannums]."
    let komodoPhoto: String = "komodo"
   
    let leopardDescription: String = "The common name \"leopard\" is a Greek compound of λέων leōn (\"lion\") and πάρδος pardos (\"male panther\"). The name reflects the fact that in antiquity, a leopard was believed to be a hybrid of a lion and a panther. The Greek word is related to Sanskrit पृदाकु pṛdāku (\"snake\", \"tiger\" or \"panther\"), and probably derives from a Mediterranean language, such as Egyptian.[12][13] The name was first used in the 13th century.[11] Other vernacular names for the leopard include graupanther, panther and several regional names such as tendwa in India.[14] The term \"black panther\" refers to leopards with melanistic genes.[15] A term for the leopard used in Old English and later, but now very uncommon, is \"pard\"."
    let leopardPhoto: String = "leopard"
    
    let monkeyDescription: String = "Monkeys are non-hominoid simians, generally possessing tails and consisting of about 260 known living species. Many monkey species are tree-dwelling (arboreal), although there are species that live primarily on the ground, such as baboons. Most species are also active during the day (diurnal). Monkeys are generally considered to be intelligent, particularly Old World monkeys." + "There are two major types of monkey: New World monkeys (platyrrhines) from South and Central America and Old World monkeys (catarrhines of the superfamily Cercopithecoidea) from Africa and Asia. Apes (hominoids)—consisting of gibbons, orangutans, gorillas, chimpanzees, and humans—are also catarrhines but are classically distinguished from monkeys"
    let monkeyPhoto: String = "monkey"
   
    let owlDescription: String = "Owls are birds from the order Strigiformes, which includes about 200 species of mostly solitary and nocturnal birds of prey typified by an upright stance, a large, broad head, binocular vision, binaural hearing, sharp talons, and feathers adapted for silent flight. Exceptions include the diurnal northern hawk-owl and the gregarious burrowing owl." + "Owls hunt mostly small mammals, insects, and other birds, although a few species specialize in hunting fish. They are found in all regions of the Earth except Antarctica and some remote islands. Owls are divided into two families: the true (or typical) owl family, Strigidae, and the barn-owl family, Tytonidae."
    let owlPhoto: String = "owl"
    
    let rabbitDescription: String = "Rabbits are small mammals in the family Leporidae of the order Lagomorpha (along with the hare and the pika). Oryctolagus cuniculus includes the European rabbit species and its descendants, the world's 305 breeds[1] of domestic rabbit. Sylvilagus includes thirteen wild rabbit species, among them the seven types of cottontail. The European rabbit, which has been introduced on every continent except Antarctica, is familiar throughout the world as a wild prey animal and as a domesticated form of livestock and pet. With its widespread effect on ecologies and cultures, the rabbit (or bunny) is, in many areas of the world, a part of daily life—as food, clothing, and companion, and as a source of artistic inspiration."
    let rabbitPhoto: String = "rabbit"
 
    let redpandaDescription: String = "The red panda (Ailurus fulgens), also called the lesser panda, the red bear-cat, and the red cat-bear, is a mammal native to the eastern Himalayas and southwestern China.[1] It has reddish-brown fur, a long, shaggy tail, and a waddling gait due to its shorter front legs; it is roughly the size of a domestic cat, though with a longer body and somewhat heavier. It is arboreal, feeds mainly on bamboo, but also eats eggs, birds, and insects. It is a solitary animal, mainly active from dusk to dawn, and is largely sedentary during the day." + "The red panda has been classified as endangered by the IUCN, because its wild population is estimated at less than 10,000 mature individuals and continues to decline due to habitat loss and fragmentation, poaching, and inbreeding depression, although red pandas are protected by national laws in their range countries."
    let redpandaPhoto: String = "red-panda"
    
    let tortoiseDescription: String = "Tortoises (/ˈtɔːr.təs.ɪz/) are a family, Testudinidae. Testudinidae is a Family under the order Testudines and suborder Cryptodira. There are fourteen extant families of the order Testudines, an order of reptile commonly known as turtles, tortoises, and terrapins. The suborder Cryptodira (Greek: hidden neck) is a suborder of Testudines that includes most living tortoises and turtles. Cryptodira differ from Pluerodia (side-neck turtles) in that they lower their necks and pull the heads straight back into the shells, instead of folding their necks sideways along the body under the shells' marginals.The testudines are some of the most ancient reptiles alive."
    let tortoisePhoto: String = "tortoise"
    
    let sealionDescription: String = "Sea lions are sea mammals characterized by external ear flaps, long foreflippers, the ability to walk on all fours, short, thick hair, and a big chest and belly. Together with the fur seals, they comprise the family Otariidae, eared seals, which contains six extant and one extinct species (the Japanese sea lion) in five genera. Their range extends from the subarctic to tropical waters of the global ocean in both the Northern and Southern Hemispheres, with the notable exception of the northern Atlantic Ocean."
    let sealionPhoto: String = "sea-lion"
    
    //My references for the images of the animals and the information relating to them
    //https://a-z-animals.com/animals/lion/
    //https://www.thetoptens.com/wild-animals/
    //https://www.thoughtco.com/the-main-animal-characteristics-4086505
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //appending animal item to the animalsArray[]
        animalsArray.append(AnimalClassFile(animalCode: "FAK0001", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Lion", animalLifeSpan: "2-3 years", animalDescription: "\(lionDescription)",  animalPhoto: lionPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0002", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Tiger", animalLifeSpan: "15-25 years", animalDescription: "\(tigerDescription)",  animalPhoto: tigerPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0003", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Wolf", animalLifeSpan: "10-12 years", animalDescription: "\(wolfDescription)",  animalPhoto: wolfPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0004", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Cheetah", animalLifeSpan: "10-12 years", animalDescription: "\(cheetahDescription)",  animalPhoto: cheetahPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0005", animalClass: "Aves", animalOrder: "Psittaciformes", animalName: "Parrot", animalLifeSpan: "40-80 years", animalDescription: "\(parrotDescription)",  animalPhoto: parrotPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0006", animalClass: "Aves", animalOrder: "Falconiformes", animalName: "Eagle", animalLifeSpan: "15-30 years", animalDescription: "\(eagleDescription)",  animalPhoto: eaglePhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0007", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Elephant", animalLifeSpan: "55-70 years", animalDescription: "\(elephantDescription)",  animalPhoto: elephantPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0008", animalClass: "Aves", animalOrder: "Falconiformes", animalName: "Falcon", animalLifeSpan: "12-18 years", animalDescription: "\(falconDescription)",  animalPhoto: falconPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0009", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Giraffe", animalLifeSpan: "20-25 years", animalDescription: "\(giraffeDescription)",  animalPhoto: giraffePhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0010", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Zebra", animalLifeSpan: "10-12 years", animalDescription: "\(zebraDescription)",  animalPhoto: zebraPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0011", animalClass: "Mammalia", animalOrder: "Artiodactyla", animalName: "Hippopotamus", animalLifeSpan: "40-15 years", animalDescription: "\(hippopotamusDescription)",  animalPhoto: hippopotamusPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0012", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Horse", animalLifeSpan: "25-30 years", animalDescription: "\(horseDescription)",  animalPhoto: horsePhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0013", animalClass: "Reptilia", animalOrder: "Squamata", animalName: "Komodo Dragon", animalLifeSpan: "25-40 years", animalDescription: "\(komodoDescription)",  animalPhoto: komodoPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0014", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Leopard", animalLifeSpan: "10-15 years", animalDescription: "\(leopardDescription)",  animalPhoto: leopardPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0015", animalClass: "Mammalia", animalOrder: "Primatesowl", animalName: "Monkey", animalLifeSpan: "10-30 years", animalDescription: "\(monkeyDescription)",  animalPhoto: monkeyPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0016", animalClass: "Aves", animalOrder: "Strigiformes", animalName: "Towny Owl", animalLifeSpan: "4-6 years", animalDescription: "\(owlDescription)",  animalPhoto: owlPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0017", animalClass: "Mammalia", animalOrder: "Lagomorpha", animalName: "Rabbit", animalLifeSpan: "4-8 years", animalDescription: "\(rabbitDescription)",  animalPhoto: rabbitPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0018", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Red-Panda", animalLifeSpan: "8-12 years", animalDescription: "\(redpandaDescription)",  animalPhoto: redpandaPhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0019", animalClass: "Reptilia", animalOrder: "Testudinidae", animalName: "Tortoise", animalLifeSpan: "30-150 years", animalDescription: "\(tortoiseDescription)",  animalPhoto: tortoisePhoto))
        animalsArray.append(AnimalClassFile(animalCode: "FAK0020", animalClass: "Mammalia", animalOrder: "Carnivora", animalName: "Sea-Lion", animalLifeSpan: "15-22 years", animalDescription: "\(sealionDescription)",  animalPhoto: sealionPhoto))

        
        
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
