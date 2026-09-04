# Warehousing Enhanced

Warehousing Enhanced is an independent Factorio 2.1 replacement fork of Warehousing. Search for `Warehousing Enhanced` in Factorio's mod browser after publication.

## Description

Adds 6x6 warehouses that allow you to store a lot of items, and smaller (cheaper) 3x3 storehouses with less capacity.

Warehouses and storehouses also have logistic versions (passive provider, active provider, storage, requester, and buffer), just like chests.

You can attach red and green circuit wires to warehouses and storehouses at the matching corners of the logistic buildings.

## Native circuit controls

Factorio 2.1.7 or newer controls requester and buffer circuit requests natively. `Set requests` input and `Read contents` output can each use the red wire, green wire, or both through Factorio's normal interface; Warehousing Enhanced does not lock or reset those choices.

Using green for requests and red for contents is a feedback-safe recommendation, not a restriction. Using the same network for both remains available, but stored-content signals can feed back into demand depending on the circuit design.

## Replacing the original Warehousing

Warehousing Enhanced cannot be enabled alongside the original `Warehousing` mod. Disable the original, enable Warehousing Enhanced, and keep a backup of the save from before the change.

The established item, entity, recipe, technology, and startup-setting prototype names are retained so Factorio can continue to recognize existing buildings and items. Mods that declare a dependency on the original internal name `Warehousing` must be updated for or made compatible with `warehousing-enhanced`.

Factorio isolates saved script storage by internal mod name, so this fork cannot read the original mod's circuit-management records and does not guess which request sections it owned. After switching, manually review every circuit-controlled requester and buffer building: check its request sections, enable `Set requests` when wanted, enable `Read contents` when wanted, and choose red, green, or both for each direction.

Original Warehousing 1.1.2 can leave its last circuit-generated manual request section active. Before enabling native `Set requests`, disable or remove that section only if you can identify it confidently; otherwise stale and native demand can combine. If ownership is uncertain, use a backed-up save and replace the building with a clean one after safely transferring its contents rather than deleting a possibly player-authored section. Review old blueprints and entity ghosts after placement or revival, then refresh them from a correctly configured building if needed.

![Warehouses in a Factorio map][hero-image]

---
No.|Warehouse|Storehouse
-|-|-
1.|Basic warehouse: 1800 slots|Storehouse: 450 slots
&nbsp;|![Basic Warehouse][warehouse-basic]|![Basic Storehouse][storehouse-basic]
2.|Storage warehouse: 2000 slots|Storehouse: 500 slots
&nbsp;|![Storage Warehouse][warehouse-storage]|![Storage Storehouse][storehouse-storage]
3.|Passive provider warehouse: 1800 slots|Storehouse: 450 slots
&nbsp;|![Passive provider warehouse][warehouse-passive-provider]|![Passive provider storehouse][storehouse-passive-provider]
4.|Active provider warehouse: 1800 slots|Storehouse: 450 slots
&nbsp;|![Active provider warehouse][warehouse-active-provider]|![Active provider storehouse][storehouse-active-provider]
5.|Requester warehouse: 1800 slots|Storehouse: 450 slots
&nbsp;|![Requester warehouse][warehouse-requester]|![Requester warehouse][storehouse-requester]
6.|Buffer warehouse: 1800 slots|Storehouse: 450 slots
&nbsp;|![Buffer warehouse][warehouse-buffer]|![Buffer warehouse][storehouse-buffer]

### Recipes

| Building | Ingredients |
| --- | --- |
| Basic warehouse | 150 steel plates, 40 stone bricks, 40 iron chests |
| Basic storehouse | 40 steel plates, 10 stone bricks, 10 iron chests |
| Logistic warehouse | 1 basic warehouse, 1 matching logistic chest, 25 advanced circuits, 40 concrete |
| Logistic storehouse | 1 basic storehouse, 1 matching logistic chest, 10 advanced circuits, 15 concrete |


## Contributors

Warehousing Enhanced is derived from [Warehousing by David-John Miller (Anoyomouse) and dgw](https://github.com/Warehousing/Warehousing). It is an independent maintained fork and is not an official release by the original authors. The code is distributed under the included MIT License.

Graphics by Nova_Kast, with visual updates for Factorio 1.0 by snouz. **Please do not use without permission!** PM Anoyomouse on the Factorio forums for permission/requests.

Storehouses contributed by Hanniballo. Updates for Factorio 0.15 contributed by kingarthur, with integration help from dgw (joined as co-maintainer as of 0.0.13).

Generative AI (OpenAI Codex) assisted with code, testing, and documentation. The maintainer remains responsible for the work and will review all code, documentation, and final release material before publication.

## Older migration removal

The legacy migrations that predated original Warehousing 0.6.0 were removed while preparing its Factorio 2.0 and Space Age release.

If a save is old enough to require one of those removed migrations, open and save it with Warehousing 0.5.7 under Factorio 1.1 before moving to Factorio 2.0 or newer.

### Translations

Warehousing Enhanced retains the community translations contributed to the original Warehousing project. Some languages currently fall back to English for the new mod title and description.

Existing translations kindly provided by the following people:

| <!-- flag -->    |        Language        |                                    Translator(s)                                           |
|------------------|------------------------|--------------------------------------------------------------------------------------------|
| :south_africa:   | Afrikaans              | Anoyomouse<br>@Yuuki2012                                                                   |
|                  | Arabic                 | yahyaqradi10                                                                               |
| :bulgaria:       | Bulgarian              | peter-mw                                                                                   |
| :cn:             | Chinese (Simplified)   | 621awdrgyjil<br>PlexPt<br>plumxing                                                         |
| :cn:             | Chinese (Traditional)  | artemkiselevvloger<br>k98a<br>pickuse2013<br>willy04wu69                                   |
| :czech_republic: | Czech                  | kukuc473<br>Raus                                                                           |
| :netherlands:    | Dutch                  | Beverneus<br>eregni<br>TheRealHenkFisher<br>Yuuki-chan2012                                 |
| :finland:        | Finnish                | mikkoku81                                                                                  |
| :fr:             | French                 | alainmonk<br>daikyraraga<br>Hasturcraft<br>rom5921                                         |
| :de:             | German                 | apcnc<br>honkinator22<br>Opterai<br>silentpiranha                                          |
| :hungary:        | Hungarian              | artemkiselevvloger                                                                         |
| :it:             | Italian                | aironenerowork<br>cocchisgambelluri45                                                      |
| :jp:             | Japanese               | Quifon                                                                                     |
| :kr:             | Korean                 | angpoo<br>@GimoXagros<br>StaGVii                                                           |
| :poland:         | Polish                 | diilmac<br>Nalapl3<br>sayonara4747<br>tengongcreative                                      |
| :brazil:         | Portuguese (Brazilian) | @RaphaelNeumann<br>@scarsick<br>vini84200<br>artemkiselevvloger<br>Clelton<br>PrinceAstero |
| :ru:             | Russian                | applevine1<br>apriori<br>axell2580<br>bjiomspeed<br>Oceanel                                |
| :slovakia:       | Slovak                 | 350zipoo                                                                                   |
| :es:             | Spanish                | AgnotSeeker<br>black.dreicous<br>frenchiveruti<br>ithan.lara.f<br>leortegacaudillo         |
| :tr:             | Turkish                | orya                                                                                       |
| :ukraine:        | Ukrainian              | antonus777<br>ddayver<br>Met_en_Bouldry<br>padwiyangel<br>sasha.garmash96                  |


  [warehouse-basic]: https://raw.githubusercontent.com/Warehousing/Warehousing/master/src/graphics/entity/warehouse/warehouse-basic.png
  [warehouse-storage]: https://raw.githubusercontent.com/Warehousing/Warehousing/master/src/graphics/entity/warehouse/warehouse-storage.png
  [warehouse-passive-provider]: https://raw.githubusercontent.com/Warehousing/Warehousing/master/src/graphics/entity/warehouse/warehouse-passive-provider.png
  [warehouse-active-provider]: https://raw.githubusercontent.com/Warehousing/Warehousing/master/src/graphics/entity/warehouse/warehouse-active-provider.png
  [warehouse-requester]: https://raw.githubusercontent.com/Warehousing/Warehousing/master/src/graphics/entity/warehouse/warehouse-requester.png
  [warehouse-buffer]: https://raw.githubusercontent.com/Warehousing/Warehousing/master/src/graphics/entity/warehouse/warehouse-buffer.png

  [storehouse-basic]: https://raw.githubusercontent.com/Warehousing/Warehousing/master/src/graphics/entity/storehouse/storehouse-basic.png
  [storehouse-storage]: https://raw.githubusercontent.com/Warehousing/Warehousing/master/src/graphics/entity/storehouse/storehouse-storage.png
  [storehouse-passive-provider]: https://raw.githubusercontent.com/Warehousing/Warehousing/master/src/graphics/entity/storehouse/storehouse-passive-provider.png
  [storehouse-active-provider]: https://raw.githubusercontent.com/Warehousing/Warehousing/master/src/graphics/entity/storehouse/storehouse-active-provider.png
  [storehouse-requester]: https://raw.githubusercontent.com/Warehousing/Warehousing/master/src/graphics/entity/storehouse/storehouse-requester.png
  [storehouse-buffer]: https://raw.githubusercontent.com/Warehousing/Warehousing/master/src/graphics/entity/storehouse/storehouse-buffer.png

  [hero-image]: https://raw.githubusercontent.com/Warehousing/Warehousing/master/hero-image.jpg
