import os

heroes = [
    "https://static.wikia.nocookie.net/clashofclans/images/2/26/Avatar_Hero_Barbarian_King.png/revision/latest/scale-to-width-down/120?cb=20200913051657",
    "https://static.wikia.nocookie.net/clashofclans/images/b/b6/Avatar_Hero_Archer_Queen.png/revision/latest/scale-to-width-down/120?cb=20200913051658",
    "https://static.wikia.nocookie.net/clashofclans/images/1/1d/Avatar_Hero_Grand_Warden.png/revision/latest/scale-to-width-down/120?cb=20200913051658",
    "https://static.wikia.nocookie.net/clashofclans/images/8/8e/Avatar_Hero_Royal_Champion.png/revision/latest/scale-to-width-down/120?cb=20200913051659",
    "https://static.wikia.nocookie.net/clashofclans/images/7/7a/Avatar_Hero_Battle_Machine.png/revision/latest/scale-to-width-down/120?cb=20200913051658",
]
elixirArmy = [
    "https://static.wikia.nocookie.net/clashofclans/images/8/87/Avatar_Barbarian.png/revision/latest/scale-to-width-down/120?cb=20170525070200",
    "https://static.wikia.nocookie.net/clashofclans/images/6/68/Avatar_Archer.png/revision/latest/scale-to-width-down/120?cb=20200913014217",
    "https://static.wikia.nocookie.net/clashofclans/images/7/7d/Avatar_Giant.png/revision/latest/scale-to-width-down/120?cb=20170525070402",
    "https://static.wikia.nocookie.net/clashofclans/images/6/68/Avatar_Goblin.png/revision/latest/scale-to-width-down/120?cb=20200913195137",
    "https://static.wikia.nocookie.net/clashofclans/images/3/36/Avatar_Wall_Breaker.png/revision/latest/scale-to-width-down/120?cb=20200913015114",
    "https://static.wikia.nocookie.net/clashofclans/images/8/80/Avatar_Balloon.png/revision/latest/scale-to-width-down/120?cb=20170525070200",
    "https://static.wikia.nocookie.net/clashofclans/images/9/97/Avatar_Wizard.png/revision/latest/scale-to-width-down/120?cb=20200913195243",
    "https://static.wikia.nocookie.net/clashofclans/images/9/9c/Avatar_Healer.png/revision/latest/scale-to-width-down/120?cb=20170525070403",
    "https://static.wikia.nocookie.net/clashofclans/images/9/9c/Avatar_Dragon.png/revision/latest/scale-to-width-down/120?cb=20200913195335",
    "https://static.wikia.nocookie.net/clashofclans/images/1/1a/Avatar_P.E.K.K.A.png/revision/latest/scale-to-width-down/120?cb=20170525070542",
    "https://static.wikia.nocookie.net/clashofclans/images/7/7a/Avatar_Baby_Dragon.png/revision/latest/scale-to-width-down/120?cb=20200913014509",
    "https://static.wikia.nocookie.net/clashofclans/images/7/7a/Avatar_Miner.png/revision/latest/scale-to-width-down/120?cb=20170525070405",
    "https://static.wikia.nocookie.net/clashofclans/images/9/97/Avatar_Electro_Dragon.png/revision/latest/scale-to-width-down/120?cb=20200910094107",
    "https://static.wikia.nocookie.net/clashofclans/images/b/be/Avatar_Yeti.png/revision/latest/scale-to-width-down/120?cb=20200913074419",
    "https://static.wikia.nocookie.net/clashofclans/images/5/50/Avatar_Dragon_Rider.png/revision/latest/scale-to-width-down/120?cb=20210618061045",
    "https://static.wikia.nocookie.net/clashofclans/images/6/67/Avatar_Electro_Titan.png/revision/latest/scale-to-width-down/120?cb=20221010075230",
]

darkElixirArmy = [
    "https://static.wikia.nocookie.net/clashofclans/images/3/3b/Avatar_Minion.png/revision/latest/scale-to-width-down/120?cb=20170525070405",
    "https://static.wikia.nocookie.net/clashofclans/images/e/e9/Avatar_Hog_Rider.png/revision/latest/scale-to-width-down/120?cb=20200913195505",
    "https://static.wikia.nocookie.net/clashofclans/images/3/31/Avatar_Valkyrie.png/revision/latest/scale-to-width-down/120?cb=20170525070543",
    "https://static.wikia.nocookie.net/clashofclans/images/4/44/Avatar_Golem.png/revision/latest/scale-to-width-down/120?cb=20170525070403",
    "https://static.wikia.nocookie.net/clashofclans/images/9/90/Avatar_Witch.png/revision/latest/scale-to-width-down/120?cb=20170525070544",
    "https://static.wikia.nocookie.net/clashofclans/images/1/1b/Avatar_Lava_Hound.png/revision/latest/scale-to-width-down/120?cb=20200913195616",
    "https://static.wikia.nocookie.net/clashofclans/images/2/24/Avatar_Bowler.png/revision/latest/scale-to-width-down/120?cb=20170525070202",
    "https://static.wikia.nocookie.net/clashofclans/images/7/79/Avatar_Ice_Golem.png/revision/latest/scale-to-width-down/120?cb=20200913014329",
    "https://static.wikia.nocookie.net/clashofclans/images/8/80/Avatar_Headhunter.png/revision/latest/scale-to-width-down/120?cb=20200913074511",
]

elixirSpells = [
    "https://static.wikia.nocookie.net/clashofclans/images/c/c0/Lightning_Spell_info.png/revision/latest/scale-to-width-down/120?cb=20210106011434",
    "https://static.wikia.nocookie.net/clashofclans/images/f/f2/Healing_Spell_info.png/revision/latest/scale-to-width-down/120?cb=20171008204028",
    "https://static.wikia.nocookie.net/clashofclans/images/8/8a/Rage_Spell_info.png/revision/latest/scale-to-width-down/120?cb=20171008204108",
    "https://static.wikia.nocookie.net/clashofclans/images/3/38/Jump_Spell_info.png/revision/latest/scale-to-width-down/120?cb=20200913023217",
    "https://static.wikia.nocookie.net/clashofclans/images/e/ef/Freeze_Spell_info.png/revision/latest/scale-to-width-down/120?cb=20180627210930",
    "https://static.wikia.nocookie.net/clashofclans/images/9/91/Clone_Spell_info.png/revision/latest/scale-to-width-down/120?cb=20200913194701",
    "https://static.wikia.nocookie.net/clashofclans/images/a/a3/Invisibility_Spell_info.png/revision/latest/scale-to-width-down/120?cb=20201207184352",
    "https://static.wikia.nocookie.net/clashofclans/images/7/73/Recall_Spell_info.png/revision/latest/scale-to-width-down/120?cb=20221010103834",
]

darkElixirSpells = [
    "https://static.wikia.nocookie.net/clashofclans/images/4/49/Poison_Spell_info.png/revision/latest/scale-to-width-down/120?cb=20171008204511",
    "https://static.wikia.nocookie.net/clashofclans/images/3/3f/Earthquake_Spell_info.png/revision/latest/scale-to-width-down/120?cb=20200913194420",
    "https://static.wikia.nocookie.net/clashofclans/images/b/be/Haste_Spell_info.png/revision/latest/scale-to-width-down/120?cb=20171008204612",
    "https://static.wikia.nocookie.net/clashofclans/images/0/0f/Skeleton_Spell_info.png/revision/latest/scale-to-width-down/120?cb=20181211010022",
    "https://static.wikia.nocookie.net/clashofclans/images/3/3d/Bat_Spell_info.png/revision/latest/scale-to-width-down/120?cb=20181205010820",
]

list = [
    "heroes",
    "elixirArmy",
    "darkElixirArmy",
    "elixirSpells",
    "darkElixirSpells"
]

for a in list:
    os.system("mkdir {}".format(a))

for b in range(len(heroes)):
    os.system("curl {} -o heroes/{}.png".format(heroes[b], b))
for c in range(len(elixirArmy)):
    os.system("curl {} -o elixirArmy/{}.png".format(elixirArmy[c], c))
for d in range(len(darkElixirArmy)):
    os.system("curl {} -o darkElixirArmy/{}.png".format(darkElixirArmy[d], d))
for e in range(len(elixirSpells)):
    os.system("curl {} -o elixirSpells/{}.png".format(elixirSpells[e], e))
for f in range(len(darkElixirSpells)):
    os.system("curl {} -o darkElixirSpells/{}.png".format(darkElixirSpells[f], f))

