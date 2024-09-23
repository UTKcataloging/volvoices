# Open Refine Template for Volunteer Voices Migration

## Template

#### Prefix

```
<?xml version="1.0" encoding="UTF-8"?>
<modsCollection xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd">
```
####Body

```
<mods>
{{if(isBlank(cells['adminDB'].value), '', '<identifier type="local">' + cells['adminDB'].value + '</identifier>')}}
<titleInfo><title>{{cells['title'].value}}</title></titleInfo>

{{if(isBlank(cells['name'].value), '', '<name' + if(isBlank(cells['name_type'].value), '', ' type="' + cells['name_type'].value + '"') + if(isBlank(cells['name_URI'].value), '', ' authority="naf" valueURI="' + cells['name_URI'].value + '"') + '><namePart>' + cells['name'].value + '</namePart>' + if(isBlank(cells['name_role'].value), '', '<role><roleTerm authority="marcrelator" valueURI="' + cells['roleTerm_URI'].value + '">' + cells['name_role'].value + '</roleTerm></role>') + '</name>')}}
{{if(isBlank(cells['name2'].value), '', '<name' + if(isBlank(cells['name2_type'].value), '', ' type="' + cells['name2_type'].value + '"') + if(isBlank(cells['name2_URI'].value), '', ' authority="naf" valueURI="' + cells['name2_URI'].value + '"') + '><namePart>' + cells['name2'].value + '</namePart>' + if(isBlank(cells['name2_role'].value), '', '<role><roleTerm authority="marcrelator" valueURI="' + cells['roleTerm2_URI'].value + '">' + cells['name2_role'].value + '</roleTerm></role>') + '</name>')}}

{{if(isBlank(cells['origin_placeTerm'].value), '', '<place><placeTerm' + if(isBlank(cells['origin_placeTerm_URI'].value), '', ' valueURI="' + cells['origin_placeTerm_URI'].value + '"') + '>' + cells['origin_placeTerm'].value + '</placeTerm></place>')}}
{{if(isBlank(cells['origin_placeTerm_2'].value), '', '<place><placeTerm' + if(isBlank(cells['origin_placeTerm_URI_2'].value), '', ' valueURI="' + cells['origin_placeTerm_URI_2'].value + '"') + '>' + cells['origin_placeTerm_2'].value + '</placeTerm></place>')}}

{{if(isBlank(cells['note'].value), '', '<note>' + cells['note'].value + '</note>')}}
{{if(isBlank(cells['note2'].value), '', '<note>' + cells['note2'].value + '</note>')}}
{{if(isBlank(cells['note3'].value), '', '<note>' + cells['note3'].value + '</note>')}}
{{if(isBlank(cells['DPN_note'].value), '', '<note displayLabel="dpn">' + cells['DPN_note'].value + '</note>')}}

{{if(isBlank(cells['typeOfResource'].value), '', '<typeOfResource>' + cells['typeOfResource'].value + '</typeOfResource>')}}
{{if(isBlank(cells['typeOfResource2'].value), '', '<typeOfResource>' + cells['typeOfResource2'].value + '</typeOfResource>')}}
{{if(isBlank(cells['typeOfResource3'].value), '', '<typeOfResource>' + cells['typeOfResource3'].value + '</typeOfResource>')}}

{{if(isBlank(cells['classification_lcc'].value), '', '<classification authority="lcc">' + cells['classification_lcc'].value + '</classification>')}}

<accessCondition type="use and reproduction" xlink:href="{{cells['rights_URI'].value}}">{{cells['rights'].value}}</accessCondition>
</mods>

```

#### Suffix

```
</modsCollection>
```