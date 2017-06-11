if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "simc"

syntax keyword simcBasicKeyword actions copy name type enemy
syntax keyword simcCharacterClassKeyword death_knight demon_hunter druid mage paladin priest shaman hunter rogue warlock warrior
syntax keyword simcIf if
syntax keyword simcIntegerOp floor ceil
syntax keyword simcCharacterSettingsKeyword level race region server role professions talents spec artifact
syntax keyword simcGearKeyword head neck shoulder back chest wrist hands waist legs feet finger1 finger2 trinket1 trinket2 main_hand off_hand

syntax match simcArithmeticOperator display "\v\+"
syntax match simcArithmeticOperator display "\v-"
syntax match simcArithmeticOperator display "\v*"
syntax match simcArithmeticOperator display "\v\%"
syntax match simcLogicalOperator display "\v\&"
syntax match simcLogicalOperator display "\v\|"
syntax match simcLogicalOperator display "\v\^"
syntax match simcLogicalOperator display "\v\!"
syntax match simcAssignmentOperator display "\v\="
syntax match simcAssignmentOperator display "\v\+\="
syntax match simcAssignmentOperator display "\v\+\=/"
syntax match simcComparisonOperator display "\v>"
syntax match simcComparisonOperator display "\v<"
syntax match simcComparisonOperator display "\v>\="
syntax match simcComparisonOperator display "\v<\="

syntax cluster simcOperator contains=simcArithmeticOperator,simcLogicalOperator,simcAssignmentOperator,simcComparisonOperator

syntax keyword simcTodo TODO contained
syntax match simcComment display "\v#.*$" contains=simcTodo

syntax region simcString display start=/\v"/ skip=/\v\./ end=/\v"/

syntax region simcVariable display start=/\v\$\(/ skip=/\v\./ end=/\v\)/

syntax case ignore
syntax match simcNumber display "\v\d+\.?\d*"
syntax match simcComma display "\v,"

highlight def link simcBasicKeyword Keyword
highlight def link simcCharacterClassKeyword Keyword
highlight def link simcIf Conditional
highlight def link simcIntegerOp Keyword
highlight def link simcCharacterSettingsKeyword Keyword
highlight def link simcGearKeyword Keyword
highlight def link simcOperator Operator
highlight def link simcComment Comment
highlight def link simcString String
highlight def link simcVariable Identifier
highlight def link simcNumber Number
highlight def link simcComma Delimiter
