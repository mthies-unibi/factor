! Copyright (C) 2010 Erik Charlebois.
! See https://factorcode.org/license.txt for BSD license.
USING: ;
IN: dwarf

CONSTANT: DW_TAG_array_type               0x01
CONSTANT: DW_TAG_class_type               0x02
CONSTANT: DW_TAG_entry_point              0x03
CONSTANT: DW_TAG_enumeration_type         0x04
CONSTANT: DW_TAG_formal_parameter         0x05
CONSTANT: DW_TAG_imported_declaration     0x08
CONSTANT: DW_TAG_label                    0x0a
CONSTANT: DW_TAG_lexical_block            0x0b
CONSTANT: DW_TAG_member                   0x0d
CONSTANT: DW_TAG_pointer_type             0x0f
CONSTANT: DW_TAG_reference_type           0x10
CONSTANT: DW_TAG_compile_unit             0x11
CONSTANT: DW_TAG_string_type              0x12
CONSTANT: DW_TAG_structure_type           0x13
CONSTANT: DW_TAG_subroutine_type          0x15
CONSTANT: DW_TAG_typedef                  0x16
CONSTANT: DW_TAG_union_type               0x17
CONSTANT: DW_TAG_unspecified_parameters   0x18
CONSTANT: DW_TAG_variant                  0x19
CONSTANT: DW_TAG_common_block             0x1a
CONSTANT: DW_TAG_common_inclusion         0x1b
CONSTANT: DW_TAG_inheritance              0x1c
CONSTANT: DW_TAG_inlined_subroutine       0x1d
CONSTANT: DW_TAG_module                   0x1e
CONSTANT: DW_TAG_ptr_to_member_type       0x1f
CONSTANT: DW_TAG_set_type                 0x20
CONSTANT: DW_TAG_subrange_type            0x21
CONSTANT: DW_TAG_with_stmt                0x22
CONSTANT: DW_TAG_access_declaration       0x23
CONSTANT: DW_TAG_base_type                0x24
CONSTANT: DW_TAG_catch_block              0x25
CONSTANT: DW_TAG_const_type               0x26
CONSTANT: DW_TAG_constant                 0x27
CONSTANT: DW_TAG_enumerator               0x28
CONSTANT: DW_TAG_file_type                0x29
CONSTANT: DW_TAG_friend                   0x2a
CONSTANT: DW_TAG_namelist                 0x2b
CONSTANT: DW_TAG_namelist_item            0x2c
CONSTANT: DW_TAG_packed_type              0x2d
CONSTANT: DW_TAG_subprogram               0x2e
CONSTANT: DW_TAG_template_type_parameter  0x2f
CONSTANT: DW_TAG_template_value_parameter 0x30
CONSTANT: DW_TAG_thrown_type              0x31
CONSTANT: DW_TAG_try_block                0x32
CONSTANT: DW_TAG_variant_part             0x33
CONSTANT: DW_TAG_variable                 0x34
CONSTANT: DW_TAG_volatile_type            0x35
CONSTANT: DW_TAG_dwarf_procedure          0x36
CONSTANT: DW_TAG_restrict_type            0x37
CONSTANT: DW_TAG_interface_type           0x38
CONSTANT: DW_TAG_namespace                0x39
CONSTANT: DW_TAG_imported_module          0x3a
CONSTANT: DW_TAG_unspecified_type         0x3b
CONSTANT: DW_TAG_partial_unit             0x3c
CONSTANT: DW_TAG_imported_unit            0x3d
CONSTANT: DW_TAG_condition                0x3f
CONSTANT: DW_TAG_shared_type              0x40
CONSTANT: DW_TAG_type_unit                0x41
CONSTANT: DW_TAG_rvalue_reference_type    0x42
CONSTANT: DW_TAG_template_alias           0x43

CONSTANT: DW_TAG_lo_user                  0x4080

CONSTANT: DW_TAG_MIPS_loop                0x4081
CONSTANT: DW_TAG_HP_array_descriptor      0x4090
CONSTANT: DW_TAG_format_label             0x4101
CONSTANT: DW_TAG_function_template        0x4102
CONSTANT: DW_TAG_class_template           0x4103
CONSTANT: DW_TAG_GNU_BINCL                0x4104
CONSTANT: DW_TAG_GNU_EINCL                0x4105
CONSTANT: DW_TAG_GNU_template_template_parameter  0x4106
CONSTANT: DW_TAG_GNU_template_parameter_pack      0x4107
CONSTANT: DW_TAG_GNU_formal_parameter_pack        0x4108
CONSTANT: DW_TAG_ALTIUM_circ_type         0x5101
CONSTANT: DW_TAG_ALTIUM_mwa_circ_type     0x5102
CONSTANT: DW_TAG_ALTIUM_rev_carry_type    0x5103
CONSTANT: DW_TAG_ALTIUM_rom               0x5111
CONSTANT: DW_TAG_upc_shared_type          0x8765
CONSTANT: DW_TAG_upc_strict_type          0x8766
CONSTANT: DW_TAG_upc_relaxed_type         0x8767
CONSTANT: DW_TAG_PGI_kanji_type           0xa000
CONSTANT: DW_TAG_PGI_interface_block      0xa020
CONSTANT: DW_TAG_SUN_function_template    0x4201
CONSTANT: DW_TAG_SUN_class_template       0x4202
CONSTANT: DW_TAG_SUN_struct_template      0x4203
CONSTANT: DW_TAG_SUN_union_template       0x4204
CONSTANT: DW_TAG_SUN_indirect_inheritance 0x4205
CONSTANT: DW_TAG_SUN_codeflags            0x4206
CONSTANT: DW_TAG_SUN_memop_info           0x4207
CONSTANT: DW_TAG_SUN_omp_child_func       0x4208
CONSTANT: DW_TAG_SUN_rtti_descriptor      0x4209
CONSTANT: DW_TAG_SUN_dtor_info            0x420a
CONSTANT: DW_TAG_SUN_dtor                 0x420b
CONSTANT: DW_TAG_SUN_f90_interface        0x420c
CONSTANT: DW_TAG_SUN_fortran_vax_structure 0x420d
CONSTANT: DW_TAG_SUN_hi                   0x42ff

CONSTANT: DW_TAG_hi_user                  0xffff

CONSTANT: DW_children_no  0
CONSTANT: DW_children_yes 1

CONSTANT: DW_FORM_addr                    0x01
CONSTANT: DW_FORM_block2                  0x03
CONSTANT: DW_FORM_block4                  0x04
CONSTANT: DW_FORM_data2                   0x05
CONSTANT: DW_FORM_data4                   0x06
CONSTANT: DW_FORM_data8                   0x07
CONSTANT: DW_FORM_string                  0x08
CONSTANT: DW_FORM_block                   0x09
CONSTANT: DW_FORM_block1                  0x0a
CONSTANT: DW_FORM_data1                   0x0b
CONSTANT: DW_FORM_flag                    0x0c
CONSTANT: DW_FORM_sdata                   0x0d
CONSTANT: DW_FORM_strp                    0x0e
CONSTANT: DW_FORM_udata                   0x0f
CONSTANT: DW_FORM_ref_addr                0x10
CONSTANT: DW_FORM_ref1                    0x11
CONSTANT: DW_FORM_ref2                    0x12
CONSTANT: DW_FORM_ref4                    0x13
CONSTANT: DW_FORM_ref8                    0x14
CONSTANT: DW_FORM_ref_udata               0x15
CONSTANT: DW_FORM_indirect                0x16
CONSTANT: DW_FORM_sec_offset              0x17
CONSTANT: DW_FORM_exprloc                 0x18
CONSTANT: DW_FORM_flag_present            0x19
CONSTANT: DW_FORM_ref_sig8                0x20

CONSTANT: DW_AT_sibling                           0x01
CONSTANT: DW_AT_location                          0x02
CONSTANT: DW_AT_name                              0x03
CONSTANT: DW_AT_ordering                          0x09
CONSTANT: DW_AT_subscr_data                       0x0a
CONSTANT: DW_AT_byte_size                         0x0b
CONSTANT: DW_AT_bit_offset                        0x0c
CONSTANT: DW_AT_bit_size                          0x0d
CONSTANT: DW_AT_element_list                      0x0f
CONSTANT: DW_AT_stmt_list                         0x10
CONSTANT: DW_AT_low_pc                            0x11
CONSTANT: DW_AT_high_pc                           0x12
CONSTANT: DW_AT_language                          0x13
CONSTANT: DW_AT_member                            0x14
CONSTANT: DW_AT_discr                             0x15
CONSTANT: DW_AT_discr_value                       0x16
CONSTANT: DW_AT_visibility                        0x17
CONSTANT: DW_AT_import                            0x18
CONSTANT: DW_AT_string_length                     0x19
CONSTANT: DW_AT_common_reference                  0x1a
CONSTANT: DW_AT_comp_dir                          0x1b
CONSTANT: DW_AT_const_value                       0x1c
CONSTANT: DW_AT_containing_type                   0x1d
CONSTANT: DW_AT_default_value                     0x1e
CONSTANT: DW_AT_inline                            0x20
CONSTANT: DW_AT_is_optional                       0x21
CONSTANT: DW_AT_lower_bound                       0x22
CONSTANT: DW_AT_producer                          0x25
CONSTANT: DW_AT_prototyped                        0x27
CONSTANT: DW_AT_return_addr                       0x2a
CONSTANT: DW_AT_start_scope                       0x2c
CONSTANT: DW_AT_bit_stride                        0x2e
CONSTANT: DW_AT_upper_bound                       0x2f
CONSTANT: DW_AT_abstract_origin                   0x31
CONSTANT: DW_AT_accessibility                     0x32
CONSTANT: DW_AT_address_class                     0x33
CONSTANT: DW_AT_artificial                        0x34
CONSTANT: DW_AT_base_types                        0x35
CONSTANT: DW_AT_calling_convention                0x36
CONSTANT: DW_AT_count                             0x37
CONSTANT: DW_AT_data_member_location              0x38
CONSTANT: DW_AT_decl_column                       0x39
CONSTANT: DW_AT_decl_file                         0x3a
CONSTANT: DW_AT_decl_line                         0x3b
CONSTANT: DW_AT_declaration                       0x3c
CONSTANT: DW_AT_discr_list                        0x3d
CONSTANT: DW_AT_encoding                          0x3e
CONSTANT: DW_AT_external                          0x3f
CONSTANT: DW_AT_frame_base                        0x40
CONSTANT: DW_AT_friend                            0x41
CONSTANT: DW_AT_identifier_case                   0x42
CONSTANT: DW_AT_macro_info                        0x43
CONSTANT: DW_AT_namelist_item                     0x44
CONSTANT: DW_AT_priority                          0x45
CONSTANT: DW_AT_segment                           0x46
CONSTANT: DW_AT_specification                     0x47
CONSTANT: DW_AT_static_link                       0x48
CONSTANT: DW_AT_type                              0x49
CONSTANT: DW_AT_use_location                      0x4a
CONSTANT: DW_AT_variable_parameter                0x4b
CONSTANT: DW_AT_virtuality                        0x4c
CONSTANT: DW_AT_vtable_elem_location              0x4d
CONSTANT: DW_AT_allocated                         0x4e
CONSTANT: DW_AT_associated                        0x4f
CONSTANT: DW_AT_data_location                     0x50
CONSTANT: DW_AT_byte_stride                       0x51
CONSTANT: DW_AT_entry_pc                          0x52
CONSTANT: DW_AT_use_UTF8                          0x53
CONSTANT: DW_AT_extension                         0x54
CONSTANT: DW_AT_ranges                            0x55
CONSTANT: DW_AT_trampoline                        0x56
CONSTANT: DW_AT_call_column                       0x57
CONSTANT: DW_AT_call_file                         0x58
CONSTANT: DW_AT_call_line                         0x59
CONSTANT: DW_AT_description                       0x5a
CONSTANT: DW_AT_binary_scale                      0x5b
CONSTANT: DW_AT_decimal_scale                     0x5c
CONSTANT: DW_AT_small                             0x5d
CONSTANT: DW_AT_decimal_sign                      0x5e
CONSTANT: DW_AT_digit_count                       0x5f
CONSTANT: DW_AT_picture_string                    0x60
CONSTANT: DW_AT_mutable                           0x61
CONSTANT: DW_AT_threads_scaled                    0x62
CONSTANT: DW_AT_explicit                          0x63
CONSTANT: DW_AT_object_pointer                    0x64
CONSTANT: DW_AT_endianity                         0x65
CONSTANT: DW_AT_elemental                         0x66
CONSTANT: DW_AT_pure                              0x67
CONSTANT: DW_AT_recursive                         0x68
CONSTANT: DW_AT_signature                         0x69
CONSTANT: DW_AT_main_subprogram                   0x6a
CONSTANT: DW_AT_data_bit_offset                   0x6b
CONSTANT: DW_AT_const_expr                        0x6c
CONSTANT: DW_AT_enum_class                        0x6d
CONSTANT: DW_AT_linkage_name                      0x6e

CONSTANT: DW_AT_HP_block_index                    0x2000

CONSTANT: DW_AT_lo_user                           0x2000

CONSTANT: DW_AT_MIPS_fde                          0x2001
CONSTANT: DW_AT_MIPS_loop_begin                   0x2002
CONSTANT: DW_AT_MIPS_tail_loop_begin              0x2003
CONSTANT: DW_AT_MIPS_epilog_begin                 0x2004
CONSTANT: DW_AT_MIPS_loop_unroll_factor           0x2005
CONSTANT: DW_AT_MIPS_software_pipeline_depth      0x2006
CONSTANT: DW_AT_MIPS_linkage_name                 0x2007
CONSTANT: DW_AT_MIPS_stride                       0x2008
CONSTANT: DW_AT_MIPS_abstract_name                0x2009
CONSTANT: DW_AT_MIPS_clone_origin                 0x200a
CONSTANT: DW_AT_MIPS_has_inlines                  0x200b
CONSTANT: DW_AT_MIPS_stride_byte                  0x200c
CONSTANT: DW_AT_MIPS_stride_elem                  0x200d
CONSTANT: DW_AT_MIPS_ptr_dopetype                 0x200e
CONSTANT: DW_AT_MIPS_allocatable_dopetype         0x200f
CONSTANT: DW_AT_MIPS_assumed_shape_dopetype       0x2010
CONSTANT: DW_AT_MIPS_assumed_size                 0x2011

CONSTANT: DW_AT_HP_unmodifiable                   0x2001
CONSTANT: DW_AT_HP_actuals_stmt_list              0x2010
CONSTANT: DW_AT_HP_proc_per_section               0x2011
CONSTANT: DW_AT_HP_raw_data_ptr                   0x2012
CONSTANT: DW_AT_HP_pass_by_reference              0x2013
CONSTANT: DW_AT_HP_opt_level                      0x2014
CONSTANT: DW_AT_HP_prof_version_id                0x2015
CONSTANT: DW_AT_HP_opt_flags                      0x2016
CONSTANT: DW_AT_HP_cold_region_low_pc             0x2017
CONSTANT: DW_AT_HP_cold_region_high_pc            0x2018
CONSTANT: DW_AT_HP_all_variables_modifiable       0x2019
CONSTANT: DW_AT_HP_linkage_name                   0x201a
CONSTANT: DW_AT_HP_prof_flags                     0x201b

CONSTANT: DW_AT_CPQ_discontig_ranges              0x2001
CONSTANT: DW_AT_CPQ_semantic_events               0x2002
CONSTANT: DW_AT_CPQ_split_lifetimes_var           0x2003
CONSTANT: DW_AT_CPQ_split_lifetimes_rtn           0x2004
CONSTANT: DW_AT_CPQ_prologue_length               0x2005

CONSTANT: DW_AT_INTEL_other_endian                0x2026

CONSTANT: DW_AT_sf_names                          0x2101
CONSTANT: DW_AT_src_info                          0x2102
CONSTANT: DW_AT_mac_info                          0x2103
CONSTANT: DW_AT_src_coords                        0x2104
CONSTANT: DW_AT_body_begin                        0x2105
CONSTANT: DW_AT_body_end                          0x2106
CONSTANT: DW_AT_GNU_vector                        0x2107
CONSTANT: DW_AT_GNU_template_name                 0x2108

CONSTANT: DW_AT_ALTIUM_loclist    0x2300

CONSTANT: DW_AT_SUN_template                      0x2201
CONSTANT: DW_AT_VMS_rtnbeg_pd_address             0x2201
CONSTANT: DW_AT_SUN_alignment                     0x2202
CONSTANT: DW_AT_SUN_vtable                        0x2203
CONSTANT: DW_AT_SUN_count_guarantee               0x2204
CONSTANT: DW_AT_SUN_command_line                  0x2205
CONSTANT: DW_AT_SUN_vbase                         0x2206
CONSTANT: DW_AT_SUN_compile_options               0x2207
CONSTANT: DW_AT_SUN_language                      0x2208
CONSTANT: DW_AT_SUN_browser_file                  0x2209
CONSTANT: DW_AT_SUN_vtable_abi                    0x2210
CONSTANT: DW_AT_SUN_func_offsets                  0x2211
CONSTANT: DW_AT_SUN_cf_kind                       0x2212
CONSTANT: DW_AT_SUN_vtable_index                  0x2213
CONSTANT: DW_AT_SUN_omp_tpriv_addr                0x2214
CONSTANT: DW_AT_SUN_omp_child_func                0x2215
CONSTANT: DW_AT_SUN_func_offset                   0x2216
CONSTANT: DW_AT_SUN_memop_type_ref                0x2217
CONSTANT: DW_AT_SUN_profile_id                    0x2218
CONSTANT: DW_AT_SUN_memop_signature               0x2219
CONSTANT: DW_AT_SUN_obj_dir                       0x2220
CONSTANT: DW_AT_SUN_obj_file                      0x2221
CONSTANT: DW_AT_SUN_original_name                 0x2222
CONSTANT: DW_AT_SUN_hwcprof_signature             0x2223
CONSTANT: DW_AT_SUN_amd64_parmdump                0x2224
CONSTANT: DW_AT_SUN_part_link_name                0x2225
CONSTANT: DW_AT_SUN_link_name                     0x2226
CONSTANT: DW_AT_SUN_pass_with_const               0x2227
CONSTANT: DW_AT_SUN_return_with_const             0x2228
CONSTANT: DW_AT_SUN_import_by_name                0x2229
CONSTANT: DW_AT_SUN_f90_pointer                   0x222a
CONSTANT: DW_AT_SUN_pass_by_ref                   0x222b
CONSTANT: DW_AT_SUN_f90_allocatable               0x222c
CONSTANT: DW_AT_SUN_f90_assumed_shape_array       0x222d
CONSTANT: DW_AT_SUN_c_vla                         0x222e
CONSTANT: DW_AT_SUN_return_value_ptr              0x2230
CONSTANT: DW_AT_SUN_dtor_start                    0x2231
CONSTANT: DW_AT_SUN_dtor_length                   0x2232
CONSTANT: DW_AT_SUN_dtor_state_initial            0x2233
CONSTANT: DW_AT_SUN_dtor_state_final              0x2234
CONSTANT: DW_AT_SUN_dtor_state_deltas             0x2235
CONSTANT: DW_AT_SUN_import_by_lname               0x2236
CONSTANT: DW_AT_SUN_f90_use_only                  0x2237
CONSTANT: DW_AT_SUN_namelist_spec                 0x2238
CONSTANT: DW_AT_SUN_is_omp_child_func             0x2239
CONSTANT: DW_AT_SUN_fortran_main_alias            0x223a
CONSTANT: DW_AT_SUN_fortran_based                 0x223b

CONSTANT: DW_AT_upc_threads_scaled                0x3210

CONSTANT: DW_AT_PGI_lbase                         0x3a00
CONSTANT: DW_AT_PGI_soffset                       0x3a01
CONSTANT: DW_AT_PGI_lstride                       0x3a02

CONSTANT: DW_AT_APPLE_closure                     0x3fe4
CONSTANT: DW_AT_APPLE_major_runtime_vers          0x3fe5
CONSTANT: DW_AT_APPLE_runtime_class               0x3fe6

CONSTANT: DW_AT_hi_user                           0x3fff

CONSTANT: DW_OP_addr                      0x03
CONSTANT: DW_OP_deref                     0x06
CONSTANT: DW_OP_const1u                   0x08
CONSTANT: DW_OP_const1s                   0x09
CONSTANT: DW_OP_const2u                   0x0a
CONSTANT: DW_OP_const2s                   0x0b
CONSTANT: DW_OP_const4u                   0x0c
CONSTANT: DW_OP_const4s                   0x0d
CONSTANT: DW_OP_const8u                   0x0e
CONSTANT: DW_OP_const8s                   0x0f
CONSTANT: DW_OP_constu                    0x10
CONSTANT: DW_OP_consts                    0x11
CONSTANT: DW_OP_dup                       0x12
CONSTANT: DW_OP_drop                      0x13
CONSTANT: DW_OP_over                      0x14
CONSTANT: DW_OP_pick                      0x15
CONSTANT: DW_OP_swap                      0x16
CONSTANT: DW_OP_rot                       0x17
CONSTANT: DW_OP_xderef                    0x18
CONSTANT: DW_OP_abs                       0x19
CONSTANT: DW_OP_and                       0x1a
CONSTANT: DW_OP_div                       0x1b
CONSTANT: DW_OP_minus                     0x1c
CONSTANT: DW_OP_mod                       0x1d
CONSTANT: DW_OP_mul                       0x1e
CONSTANT: DW_OP_neg                       0x1f
CONSTANT: DW_OP_not                       0x20
CONSTANT: DW_OP_or                        0x21
CONSTANT: DW_OP_plus                      0x22
CONSTANT: DW_OP_plus_uconst               0x23
CONSTANT: DW_OP_shl                       0x24
CONSTANT: DW_OP_shr                       0x25
CONSTANT: DW_OP_shra                      0x26
CONSTANT: DW_OP_xor                       0x27
CONSTANT: DW_OP_bra                       0x28
CONSTANT: DW_OP_eq                        0x29
CONSTANT: DW_OP_ge                        0x2a
CONSTANT: DW_OP_gt                        0x2b
CONSTANT: DW_OP_le                        0x2c
CONSTANT: DW_OP_lt                        0x2d
CONSTANT: DW_OP_ne                        0x2e
CONSTANT: DW_OP_skip                      0x2f
CONSTANT: DW_OP_lit0                      0x30
CONSTANT: DW_OP_lit1                      0x31
CONSTANT: DW_OP_lit2                      0x32
CONSTANT: DW_OP_lit3                      0x33
CONSTANT: DW_OP_lit4                      0x34
CONSTANT: DW_OP_lit5                      0x35
CONSTANT: DW_OP_lit6                      0x36
CONSTANT: DW_OP_lit7                      0x37
CONSTANT: DW_OP_lit8                      0x38
CONSTANT: DW_OP_lit9                      0x39
CONSTANT: DW_OP_lit10                     0x3a
CONSTANT: DW_OP_lit11                     0x3b
CONSTANT: DW_OP_lit12                     0x3c
CONSTANT: DW_OP_lit13                     0x3d
CONSTANT: DW_OP_lit14                     0x3e
CONSTANT: DW_OP_lit15                     0x3f
CONSTANT: DW_OP_lit16                     0x40
CONSTANT: DW_OP_lit17                     0x41
CONSTANT: DW_OP_lit18                     0x42
CONSTANT: DW_OP_lit19                     0x43
CONSTANT: DW_OP_lit20                     0x44
CONSTANT: DW_OP_lit21                     0x45
CONSTANT: DW_OP_lit22                     0x46
CONSTANT: DW_OP_lit23                     0x47
CONSTANT: DW_OP_lit24                     0x48
CONSTANT: DW_OP_lit25                     0x49
CONSTANT: DW_OP_lit26                     0x4a
CONSTANT: DW_OP_lit27                     0x4b
CONSTANT: DW_OP_lit28                     0x4c
CONSTANT: DW_OP_lit29                     0x4d
CONSTANT: DW_OP_lit30                     0x4e
CONSTANT: DW_OP_lit31                     0x4f
CONSTANT: DW_OP_reg0                      0x50
CONSTANT: DW_OP_reg1                      0x51
CONSTANT: DW_OP_reg2                      0x52
CONSTANT: DW_OP_reg3                      0x53
CONSTANT: DW_OP_reg4                      0x54
CONSTANT: DW_OP_reg5                      0x55
CONSTANT: DW_OP_reg6                      0x56
CONSTANT: DW_OP_reg7                      0x57
CONSTANT: DW_OP_reg8                      0x58
CONSTANT: DW_OP_reg9                      0x59
CONSTANT: DW_OP_reg10                     0x5a
CONSTANT: DW_OP_reg11                     0x5b
CONSTANT: DW_OP_reg12                     0x5c
CONSTANT: DW_OP_reg13                     0x5d
CONSTANT: DW_OP_reg14                     0x5e
CONSTANT: DW_OP_reg15                     0x5f
CONSTANT: DW_OP_reg16                     0x60
CONSTANT: DW_OP_reg17                     0x61
CONSTANT: DW_OP_reg18                     0x62
CONSTANT: DW_OP_reg19                     0x63
CONSTANT: DW_OP_reg20                     0x64
CONSTANT: DW_OP_reg21                     0x65
CONSTANT: DW_OP_reg22                     0x66
CONSTANT: DW_OP_reg23                     0x67
CONSTANT: DW_OP_reg24                     0x68
CONSTANT: DW_OP_reg25                     0x69
CONSTANT: DW_OP_reg26                     0x6a
CONSTANT: DW_OP_reg27                     0x6b
CONSTANT: DW_OP_reg28                     0x6c
CONSTANT: DW_OP_reg29                     0x6d
CONSTANT: DW_OP_reg30                     0x6e
CONSTANT: DW_OP_reg31                     0x6f
CONSTANT: DW_OP_breg0                     0x70
CONSTANT: DW_OP_breg1                     0x71
CONSTANT: DW_OP_breg2                     0x72
CONSTANT: DW_OP_breg3                     0x73
CONSTANT: DW_OP_breg4                     0x74
CONSTANT: DW_OP_breg5                     0x75
CONSTANT: DW_OP_breg6                     0x76
CONSTANT: DW_OP_breg7                     0x77
CONSTANT: DW_OP_breg8                     0x78
CONSTANT: DW_OP_breg9                     0x79
CONSTANT: DW_OP_breg10                    0x7a
CONSTANT: DW_OP_breg11                    0x7b
CONSTANT: DW_OP_breg12                    0x7c
CONSTANT: DW_OP_breg13                    0x7d
CONSTANT: DW_OP_breg14                    0x7e
CONSTANT: DW_OP_breg15                    0x7f
CONSTANT: DW_OP_breg16                    0x80
CONSTANT: DW_OP_breg17                    0x81
CONSTANT: DW_OP_breg18                    0x82
CONSTANT: DW_OP_breg19                    0x83
CONSTANT: DW_OP_breg20                    0x84
CONSTANT: DW_OP_breg21                    0x85
CONSTANT: DW_OP_breg22                    0x86
CONSTANT: DW_OP_breg23                    0x87
CONSTANT: DW_OP_breg24                    0x88
CONSTANT: DW_OP_breg25                    0x89
CONSTANT: DW_OP_breg26                    0x8a
CONSTANT: DW_OP_breg27                    0x8b
CONSTANT: DW_OP_breg28                    0x8c
CONSTANT: DW_OP_breg29                    0x8d
CONSTANT: DW_OP_breg30                    0x8e
CONSTANT: DW_OP_breg31                    0x8f
CONSTANT: DW_OP_regx                      0x90
CONSTANT: DW_OP_fbreg                     0x91
CONSTANT: DW_OP_bregx                     0x92
CONSTANT: DW_OP_piece                     0x93
CONSTANT: DW_OP_deref_size                0x94
CONSTANT: DW_OP_xderef_size               0x95
CONSTANT: DW_OP_nop                       0x96
CONSTANT: DW_OP_push_object_address       0x97
CONSTANT: DW_OP_call2                     0x98
CONSTANT: DW_OP_call4                     0x99
CONSTANT: DW_OP_call_ref                  0x9a
CONSTANT: DW_OP_form_tls_address          0x9b
CONSTANT: DW_OP_call_frame_cfa            0x9c
CONSTANT: DW_OP_bit_piece                 0x9d
CONSTANT: DW_OP_implicit_value            0x9e
CONSTANT: DW_OP_stack_value               0x9f


CONSTANT: DW_OP_lo_user                   0xe0
CONSTANT: DW_OP_GNU_push_tls_address      0xe0
CONSTANT: DW_OP_HP_unknown                0xe0
CONSTANT: DW_OP_HP_is_value               0xe1
CONSTANT: DW_OP_HP_fltconst4              0xe2
CONSTANT: DW_OP_HP_fltconst8              0xe3
CONSTANT: DW_OP_HP_mod_range              0xe4
CONSTANT: DW_OP_HP_unmod_range            0xe5
CONSTANT: DW_OP_HP_tls                    0xe6
CONSTANT: DW_OP_INTEL_bit_piece           0xe8
CONSTANT: DW_OP_APPLE_uninit              0xf0
CONSTANT: DW_OP_hi_user                   0xff

CONSTANT: DW_ATE_address                  0x1
CONSTANT: DW_ATE_boolean                  0x2
CONSTANT: DW_ATE_complex_float            0x3
CONSTANT: DW_ATE_float                    0x4
CONSTANT: DW_ATE_signed                   0x5
CONSTANT: DW_ATE_signed_char              0x6
CONSTANT: DW_ATE_unsigned                 0x7
CONSTANT: DW_ATE_unsigned_char            0x8
CONSTANT: DW_ATE_imaginary_float          0x9
CONSTANT: DW_ATE_packed_decimal           0xa
CONSTANT: DW_ATE_numeric_string           0xb
CONSTANT: DW_ATE_edited                   0xc
CONSTANT: DW_ATE_signed_fixed             0xd
CONSTANT: DW_ATE_unsigned_fixed           0xe
CONSTANT: DW_ATE_decimal_float            0xf

CONSTANT: DW_ATE_lo_user                0x80
CONSTANT: DW_ATE_ALTIUM_fract           0x80
CONSTANT: DW_ATE_ALTIUM_accum           0x81
CONSTANT: DW_ATE_HP_float80             0x80
CONSTANT: DW_ATE_HP_complex_float80     0x81
CONSTANT: DW_ATE_HP_float128            0x82
CONSTANT: DW_ATE_HP_complex_float128    0x83
CONSTANT: DW_ATE_HP_floathpintel        0x84
CONSTANT: DW_ATE_HP_imaginary_float80   0x85
CONSTANT: DW_ATE_HP_imaginary_float128  0x86
CONSTANT: DW_ATE_SUN_interval_float     0x91
CONSTANT: DW_ATE_SUN_imaginary_float    0x92
CONSTANT: DW_ATE_hi_user                0xff

CONSTANT: DW_DS_unsigned                  0x01
CONSTANT: DW_DS_leading_overpunch         0x02
CONSTANT: DW_DS_trailing_overpunch        0x03
CONSTANT: DW_DS_leading_separate          0x04
CONSTANT: DW_DS_trailing_separate         0x05

CONSTANT: DW_END_default                  0x00
CONSTANT: DW_END_big                      0x01
CONSTANT: DW_END_little                   0x02
CONSTANT: DW_END_lo_user                  0x40
CONSTANT: DW_END_hi_user                  0xff

CONSTANT: DW_ATCF_lo_user                 0x40
CONSTANT: DW_ATCF_SUN_mop_bitfield        0x41
CONSTANT: DW_ATCF_SUN_mop_spill           0x42
CONSTANT: DW_ATCF_SUN_mop_scopy           0x43
CONSTANT: DW_ATCF_SUN_func_start          0x44
CONSTANT: DW_ATCF_SUN_end_ctors           0x45
CONSTANT: DW_ATCF_SUN_branch_target       0x46
CONSTANT: DW_ATCF_SUN_mop_stack_probe     0x47
CONSTANT: DW_ATCF_SUN_func_epilog         0x48
CONSTANT: DW_ATCF_hi_user                 0xff

CONSTANT: DW_ACCESS_public                0x01
CONSTANT: DW_ACCESS_protected             0x02
CONSTANT: DW_ACCESS_private               0x03

CONSTANT: DW_VIS_local                    0x01
CONSTANT: DW_VIS_exported                 0x02
CONSTANT: DW_VIS_qualified                0x03

CONSTANT: DW_VIRTUALITY_none              0x00
CONSTANT: DW_VIRTUALITY_virtual           0x01
CONSTANT: DW_VIRTUALITY_pure_virtual      0x02

CONSTANT: DW_LANG_C89                     0x0001
CONSTANT: DW_LANG_C                       0x0002
CONSTANT: DW_LANG_Ada83                   0x0003
CONSTANT: DW_LANG_C_plus_plus             0x0004
CONSTANT: DW_LANG_Cobol74                 0x0005
CONSTANT: DW_LANG_Cobol85                 0x0006
CONSTANT: DW_LANG_Fortran77               0x0007
CONSTANT: DW_LANG_Fortran90               0x0008
CONSTANT: DW_LANG_Pascal83                0x0009
CONSTANT: DW_LANG_Modula2                 0x000a
CONSTANT: DW_LANG_Java                    0x000b
CONSTANT: DW_LANG_C99                     0x000c
CONSTANT: DW_LANG_Ada95                   0x000d
CONSTANT: DW_LANG_Fortran95               0x000e
CONSTANT: DW_LANG_PLI                     0x000f
CONSTANT: DW_LANG_ObjC                    0x0010
CONSTANT: DW_LANG_ObjC_plus_plus          0x0011
CONSTANT: DW_LANG_UPC                     0x0012
CONSTANT: DW_LANG_D                       0x0013
CONSTANT: DW_LANG_Python                  0x0014
CONSTANT: DW_LANG_lo_user                 0x8000
CONSTANT: DW_LANG_Mips_Assembler          0x8001
CONSTANT: DW_LANG_Upc                     0x8765
CONSTANT: DW_LANG_ALTIUM_Assembler        0x9101
CONSTANT: DW_LANG_SUN_Assembler           0x9001
CONSTANT: DW_LANG_hi_user                 0xffff

CONSTANT: DW_ID_case_sensitive            0x00
CONSTANT: DW_ID_up_case                   0x01
CONSTANT: DW_ID_down_case                 0x02
CONSTANT: DW_ID_case_insensitive          0x03

CONSTANT: DW_CC_normal                    0x01
CONSTANT: DW_CC_program                   0x02
CONSTANT: DW_CC_nocall                    0x03

CONSTANT: DW_CC_lo_user                   0x40
CONSTANT: DW_CC_ALTIUM_interrupt          0x65
CONSTANT: DW_CC_ALTIUM_near_system_stack  0x66
CONSTANT: DW_CC_ALTIUM_near_user_stack    0x67
CONSTANT: DW_CC_ALTIUM_huge_user_stack    0x68
CONSTANT: DW_CC_hi_user                   0xff

CONSTANT: DW_INL_not_inlined              0x00
CONSTANT: DW_INL_inlined                  0x01
CONSTANT: DW_INL_declared_not_inlined     0x02
CONSTANT: DW_INL_declared_inlined         0x03

CONSTANT: DW_ORD_row_major                0x00
CONSTANT: DW_ORD_col_major                0x01

CONSTANT: DW_DSC_label                    0x00
CONSTANT: DW_DSC_range                    0x01

CONSTANT: DW_LNS_copy                     0x01
CONSTANT: DW_LNS_advance_pc               0x02
CONSTANT: DW_LNS_advance_line             0x03
CONSTANT: DW_LNS_set_file                 0x04
CONSTANT: DW_LNS_set_column               0x05
CONSTANT: DW_LNS_negate_stmt              0x06
CONSTANT: DW_LNS_set_basic_block          0x07
CONSTANT: DW_LNS_const_add_pc             0x08
CONSTANT: DW_LNS_fixed_advance_pc         0x09
CONSTANT: DW_LNS_set_prologue_end         0x0a
CONSTANT: DW_LNS_set_epilogue_begin       0x0b
CONSTANT: DW_LNS_set_isa                  0x0c

CONSTANT: DW_LNE_end_sequence             0x01
CONSTANT: DW_LNE_set_address              0x02
CONSTANT: DW_LNE_define_file              0x03
CONSTANT: DW_LNE_set_discriminator        0x04

CONSTANT: DW_LNE_HP_negate_is_UV_update       0x11
CONSTANT: DW_LNE_HP_push_context              0x12
CONSTANT: DW_LNE_HP_pop_context               0x13
CONSTANT: DW_LNE_HP_set_file_line_column      0x14
CONSTANT: DW_LNE_HP_set_routine_name          0x15
CONSTANT: DW_LNE_HP_set_sequence              0x16
CONSTANT: DW_LNE_HP_negate_post_semantics     0x17
CONSTANT: DW_LNE_HP_negate_function_exit      0x18
CONSTANT: DW_LNE_HP_negate_front_end_logical  0x19
CONSTANT: DW_LNE_HP_define_proc               0x20

CONSTANT: DW_LNE_lo_user                  0x80
CONSTANT: DW_LNE_hi_user                  0xff

CONSTANT: DW_MACINFO_define               0x01
CONSTANT: DW_MACINFO_undef                0x02
CONSTANT: DW_MACINFO_start_file           0x03
CONSTANT: DW_MACINFO_end_file             0x04
CONSTANT: DW_MACINFO_vendor_ext           0xff

CONSTANT: DW_CFA_advance_loc        0x40
CONSTANT: DW_CFA_offset             0x80
CONSTANT: DW_CFA_restore            0xc0
CONSTANT: DW_CFA_extended           0x00

CONSTANT: DW_CFA_nop              0x00
CONSTANT: DW_CFA_set_loc          0x01
CONSTANT: DW_CFA_advance_loc1     0x02
CONSTANT: DW_CFA_advance_loc2     0x03
CONSTANT: DW_CFA_advance_loc4     0x04
CONSTANT: DW_CFA_offset_extended  0x05
CONSTANT: DW_CFA_restore_extended 0x06
CONSTANT: DW_CFA_undefined        0x07
CONSTANT: DW_CFA_same_value       0x08
CONSTANT: DW_CFA_register         0x09
CONSTANT: DW_CFA_remember_state   0x0a
CONSTANT: DW_CFA_restore_state    0x0b
CONSTANT: DW_CFA_def_cfa          0x0c
CONSTANT: DW_CFA_def_cfa_register 0x0d
CONSTANT: DW_CFA_def_cfa_offset   0x0e
CONSTANT: DW_CFA_def_cfa_expression 0x0f
CONSTANT: DW_CFA_expression       0x10
CONSTANT: DW_CFA_offset_extended_sf 0x11
CONSTANT: DW_CFA_def_cfa_sf       0x12
CONSTANT: DW_CFA_def_cfa_offset_sf 0x13
CONSTANT: DW_CFA_val_offset        0x14
CONSTANT: DW_CFA_val_offset_sf     0x15
CONSTANT: DW_CFA_val_expression    0x16

CONSTANT: DW_CFA_lo_user           0x1c
CONSTANT: DW_CFA_MIPS_advance_loc8 0x1d
CONSTANT: DW_CFA_GNU_window_save   0x2d
CONSTANT: DW_CFA_GNU_args_size     0x2e
CONSTANT: DW_CFA_GNU_negative_offset_extended  0x2f
CONSTANT: DW_CFA_high_user         0x3f

CONSTANT: DW_EH_PE_absptr   0x00
CONSTANT: DW_EH_PE_uleb128  0x01
CONSTANT: DW_EH_PE_udata2   0x02
CONSTANT: DW_EH_PE_udata4   0x03
CONSTANT: DW_EH_PE_udata8   0x04
CONSTANT: DW_EH_PE_sleb128  0x09
CONSTANT: DW_EH_PE_sdata2   0x0A
CONSTANT: DW_EH_PE_sdata4   0x0B
CONSTANT: DW_EH_PE_sdata8   0x0C
CONSTANT: DW_EH_PE_pcrel    0x10
CONSTANT: DW_EH_PE_textrel  0x20
CONSTANT: DW_EH_PE_datarel  0x30
CONSTANT: DW_EH_PE_funcrel  0x40
CONSTANT: DW_EH_PE_aligned  0x50
CONSTANT: DW_EH_PE_omit     0xff

CONSTANT: DW_FRAME_CFA_COL 0

CONSTANT: DW_FRAME_REG1   1
CONSTANT: DW_FRAME_REG2   2
CONSTANT: DW_FRAME_REG3   3
CONSTANT: DW_FRAME_REG4   4
CONSTANT: DW_FRAME_REG5   5
CONSTANT: DW_FRAME_REG6   6
CONSTANT: DW_FRAME_REG7   7
CONSTANT: DW_FRAME_REG8   8
CONSTANT: DW_FRAME_REG9   9
CONSTANT: DW_FRAME_REG10  10
CONSTANT: DW_FRAME_REG11  11
CONSTANT: DW_FRAME_REG12  12
CONSTANT: DW_FRAME_REG13  13
CONSTANT: DW_FRAME_REG14  14
CONSTANT: DW_FRAME_REG15  15
CONSTANT: DW_FRAME_REG16  16
CONSTANT: DW_FRAME_REG17  17
CONSTANT: DW_FRAME_REG18  18
CONSTANT: DW_FRAME_REG19  19
CONSTANT: DW_FRAME_REG20  20
CONSTANT: DW_FRAME_REG21  21
CONSTANT: DW_FRAME_REG22  22
CONSTANT: DW_FRAME_REG23  23
CONSTANT: DW_FRAME_REG24  24
CONSTANT: DW_FRAME_REG25  25
CONSTANT: DW_FRAME_REG26  26
CONSTANT: DW_FRAME_REG27  27
CONSTANT: DW_FRAME_REG28  28
CONSTANT: DW_FRAME_REG29  29
CONSTANT: DW_FRAME_REG30  30
CONSTANT: DW_FRAME_REG31  31
CONSTANT: DW_FRAME_FREG0  32
CONSTANT: DW_FRAME_FREG1  33
CONSTANT: DW_FRAME_FREG2  34
CONSTANT: DW_FRAME_FREG3  35
CONSTANT: DW_FRAME_FREG4  36
CONSTANT: DW_FRAME_FREG5  37
CONSTANT: DW_FRAME_FREG6  38
CONSTANT: DW_FRAME_FREG7  39
CONSTANT: DW_FRAME_FREG8  40
CONSTANT: DW_FRAME_FREG9  41
CONSTANT: DW_FRAME_FREG10 42
CONSTANT: DW_FRAME_FREG11 43
CONSTANT: DW_FRAME_FREG12 44
CONSTANT: DW_FRAME_FREG13 45
CONSTANT: DW_FRAME_FREG14 46
CONSTANT: DW_FRAME_FREG15 47
CONSTANT: DW_FRAME_FREG16 48
CONSTANT: DW_FRAME_FREG17 49
CONSTANT: DW_FRAME_FREG18 50
CONSTANT: DW_FRAME_FREG19 51
CONSTANT: DW_FRAME_FREG20 52
CONSTANT: DW_FRAME_FREG21 53
CONSTANT: DW_FRAME_FREG22 54
CONSTANT: DW_FRAME_FREG23 55
CONSTANT: DW_FRAME_FREG24 56
CONSTANT: DW_FRAME_FREG25 57
CONSTANT: DW_FRAME_FREG26 58
CONSTANT: DW_FRAME_FREG27 59
CONSTANT: DW_FRAME_FREG28 60
CONSTANT: DW_FRAME_FREG29 61
CONSTANT: DW_FRAME_FREG30 62
CONSTANT: DW_FRAME_FREG31 63

CONSTANT: DW_CHILDREN_no        0x00
CONSTANT: DW_CHILDREN_yes       0x01
CONSTANT: DW_ADDR_none          0x00
