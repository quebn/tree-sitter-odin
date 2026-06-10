[
  (block)
  (enum_declaration)
  (union_declaration)
  (struct_declaration)
  (struct)
  (parameters)
  (tuple_type)
  (call_expression)
  (switch_case)
  (overloaded_procedure_declaration)
] @indent.begin

; hello(
((identifier) . (ERROR "(" @indent.begin))

[
  ")"
  "]"
] @indent.branch @indent.end

; Have to do all closing brackets separately because the one for switch statements shouldn't end.
(block "}" @indent.branch @indent.end)
(enum_declaration "}" @indent.branch @indent.end)
(union_declaration "}" @indent.branch @indent.end)
(struct_declaration "}" @indent.branch @indent.end)
(struct "}" @indent.branch @indent.end)
(overloaded_procedure_declaration "}" @indent.branch @indent.end)

[
  (comment)
  (block_comment)
  (string)
  (ERROR)
] @indent.auto
