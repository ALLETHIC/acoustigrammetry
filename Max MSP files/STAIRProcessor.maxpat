{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 77.0, 2226.0, 850.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 2,
		"objectsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"annotation" : "When set to \"In\", the blurred components are those inside the Freq1-Freq2 range, when set to \"Out\" the blurred components are those outside the Freq1-Freq2 range.",
					"annotation_name" : "In / Out",
					"appearance" : 1,
					"id" : "obj-11",
					"livemode" : 1,
					"maxclass" : "live.tab",
					"num_lines_patching" : 1,
					"num_lines_presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1950.0, 30.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 125.0, 269.0, 49.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "In / Out",
							"parameter_enum" : [ "In", "Out" ],
							"parameter_linknames" : 1,
							"parameter_longname" : "In / Out[1]",
							"parameter_mmax" : 1,
							"parameter_shortname" : "In / Out",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"varname" : "In / Out[1]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Set the amplitude of the non-blurred components (inside or outside of the frequency range)",
					"annotation_name" : "Residual",
					"id" : "obj-38",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1920.0, 0.0, 27.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 222.0, 111.0, 27.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Residual",
							"parameter_enum" : [ "1/128", "1/64", "1/32T", "1/64D", "1/32", "1/16T", "1/32D", "1/16", "1/8T", "1/16D", "1/8", "1/4T", "1/8D", "1/4", "1/2T", "1/4D", "1/2", "1/1T", "1/2D", "1/1" ],
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Residual[1]",
							"parameter_mapping_index" : 28,
							"parameter_mmax" : 100.0,
							"parameter_shortname" : "Residual",
							"parameter_type" : 1,
							"parameter_unitstyle" : 5
						}

					}
,
					"varname" : "Residual[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1935.0, 90.0, 46.0, 22.0 ],
					"text" : "pow 2."
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Set the length of the spectral reverberation tail.",
					"annotation_name" : "Halo",
					"id" : "obj-49",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1875.0, 0.0, 27.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 314.0, 96.0, 27.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Halo",
							"parameter_enum" : [ "1/128", "1/64", "1/32T", "1/64D", "1/32", "1/16T", "1/32D", "1/16", "1/8T", "1/16D", "1/8", "1/4T", "1/8D", "1/4", "1/2T", "1/4D", "1/2", "1/1T", "1/2D", "1/1" ],
							"parameter_initial" : [ 0.9 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Halo[1]",
							"parameter_mapping_index" : 28,
							"parameter_mmax" : 0.995,
							"parameter_shortname" : "Halo",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "Halo[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1875.0, 60.0, 66.0, 22.0 ],
					"text" : "pow 0.125"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "The signal between Freq1 and Freq2 is processed. If the In/Out switch is set to Out, the signal outside that range is processed.",
					"annotation_name" : "Frequency 2",
					"id" : "obj-64",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1830.0, 0.0, 27.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 136.0, 81.0, 27.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Frequency 2",
							"parameter_enum" : [ "1/128", "1/64", "1/32T", "1/64D", "1/32", "1/16T", "1/32D", "1/16", "1/8T", "1/16D", "1/8", "1/4T", "1/8D", "1/4", "1/2T", "1/4D", "1/2", "1/1T", "1/2D", "1/1" ],
							"parameter_exponent" : 2.0,
							"parameter_initial" : [ 10000.000656000000163 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Frequency 2[1]",
							"parameter_mapping_index" : 28,
							"parameter_mmax" : 22000.0,
							"parameter_shortname" : "Freq 2",
							"parameter_type" : 0,
							"parameter_unitstyle" : 3
						}

					}
,
					"varname" : "Frequency 2[1]"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "The signal between Freq1 and Freq2 is processed. If the In/Out switch is set to Out, the signal outside that range is processed.",
					"annotation_name" : "Frequency 1",
					"id" : "obj-66",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1785.0, 0.0, 27.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 80.0, 81.0, 27.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_annotation_name" : "Frequency 1",
							"parameter_enum" : [ "1/128", "1/64", "1/32T", "1/64D", "1/32", "1/16T", "1/32D", "1/16", "1/8T", "1/16D", "1/8", "1/4T", "1/8D", "1/4", "1/2T", "1/4D", "1/2", "1/1T", "1/2D", "1/1" ],
							"parameter_exponent" : 2.0,
							"parameter_initial" : [ 49.999999000000003 ],
							"parameter_initial_enable" : 1,
							"parameter_linknames" : 1,
							"parameter_longname" : "Frequency 1[1]",
							"parameter_mapping_index" : 28,
							"parameter_mmax" : 22000.0,
							"parameter_shortname" : "Freq 1",
							"parameter_type" : 0,
							"parameter_unitstyle" : 3
						}

					}
,
					"varname" : "Frequency 1[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1785.0, 60.0, 68.0, 22.0 ],
					"text" : "pak 0. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 1785.0, 90.0, 66.0, 22.0 ],
					"text" : "vs.minmax"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1710.0, 30.0, 62.0, 22.0 ],
					"text" : "*~ 0.0001"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1710.0, 0.0, 46.0, 22.0 ],
					"text" : "noise~"
				}

			}
, 			{
				"box" : 				{
					"channels" : 16,
					"id" : "obj-76",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 16,
					"numoutlets" : 19,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1500.0, 525.0, 390.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1500.0, 525.0, 390.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "Dry Gain[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "Dry Gain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "Dry[1]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 16,
					"id" : "obj-65",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 16,
					"numoutlets" : 19,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1500.0, 375.0, 180.0, 135.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1500.0, 375.0, 180.0, 135.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "Dry Gain",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "Dry Gain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "Dry"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 1380.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1380.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 1305.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1305.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 1215.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1215.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 1111.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1111.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 1005.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1005.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 915.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 915.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 825.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 825.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 735.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 735.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 645.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 645.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 555.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 555.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 465.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 465.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 360.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 360.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 271.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 271.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 180.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 180.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 91.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 91.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1620.0, 802.0, 29.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1620.0, 802.0, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1635.0, 771.0, 60.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1635.0, 771.0, 60.0, 20.0 ],
					"text" : "Binaural"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1635.0, 757.0, 60.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1635.0, 757.0, 60.0, 20.0 ],
					"text" : "Stereo"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Stereo Binaural",
					"disabled" : [ 0, 0 ],
					"id" : "obj-3",
					"itemtype" : 0,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1620.0, 757.0, 18.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1620.0, 757.0, 18.0, 34.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "0", "1" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "radiogroup",
							"parameter_mmax" : 1,
							"parameter_shortname" : "radiogroup",
							"parameter_type" : 2
						}

					}
,
					"size" : 2,
					"value" : 0,
					"varname" : "radiogroup"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-277",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1531.0, 802.0, 90.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1531.0, 802.0, 90.0, 20.0 ],
					"text" : "3OAAFormat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-276",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1531.0, 787.0, 90.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1531.0, 787.0, 90.0, 20.0 ],
					"text" : "7.1.4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-275",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1531.0, 771.0, 90.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1531.0, 771.0, 90.0, 34.0 ],
					"text" : "Quad\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-274",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1531.0, 757.0, 90.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1531.0, 757.0, 90.0, 20.0 ],
					"text" : "Stereo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-272",
					"maxclass" : "newobj",
					"numinlets" : 16,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 77.0, 2226.0, 850.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 16,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 45.0, 705.0, 22.0 ],
									"text" : "dac~ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-13",
									"index" : 16,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 675.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-14",
									"index" : 15,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 630.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-15",
									"index" : 14,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 585.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-16",
									"index" : 13,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 540.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"index" : 12,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 495.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 11,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 450.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 10,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 405.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 9,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 360.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 315.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 270.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 225.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 180.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 135.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 90.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 10 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 9 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 8 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 15 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 14 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 13 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 12 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 3 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 2 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 7 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 6 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 5 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 4 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 11 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 45.0, 877.0, 1410.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.0, 877.0, 1410.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p 3OAAFormatOutput"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-271",
					"maxclass" : "newobj",
					"numinlets" : 16,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 77.0, 2226.0, 850.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-191",
									"index" : 16,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2085.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-192",
									"index" : 15,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1950.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-193",
									"index" : 14,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1815.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-194",
									"index" : 13,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1680.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-187",
									"index" : 12,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1530.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-188",
									"index" : 11,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1395.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-189",
									"index" : 10,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1260.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-190",
									"index" : 9,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1110.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-182",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 975.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-184",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 840.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-185",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 705.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-186",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 555.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-180",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 420.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-181",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 285.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 150.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-183",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 795.0, 150.0, 17.0 ],
									"text" : "L C R Lr Rr Ls Rs Lh Rh Lhr Rhr"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-169",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2235.0, 390.0, 75.0, 22.0 ],
									"text" : "*~ 0.046947"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-170",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2220.0, 360.0, 75.0, 22.0 ],
									"text" : "*~ 0.035566"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-171",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2205.0, 330.0, 75.0, 22.0 ],
									"text" : "*~ 0.035566"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-172",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2190.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.028626"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-173",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2175.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-174",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2160.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-175",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2145.0, 210.0, 74.0, 22.0 ],
									"text" : "*~ 0.457407"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-176",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2130.0, 180.0, 74.0, 22.0 ],
									"text" : "*~ 0.069773"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-177",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2115.0, 150.0, 67.0, 22.0 ],
									"text" : "*~ 0.08456"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-178",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2100.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-179",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2085.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.041716"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-158",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2100.0, 390.0, 74.0, 22.0 ],
									"text" : "*~ 0.035566"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-159",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2085.0, 360.0, 74.0, 22.0 ],
									"text" : "*~ 0.046947"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-160",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2070.0, 330.0, 74.0, 22.0 ],
									"text" : "*~ 0.028626"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-161",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2055.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.035566"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-162",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2040.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2025.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-164",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2010.0, 210.0, 74.0, 22.0 ],
									"text" : "*~ 0.069773"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-165",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1995.0, 180.0, 74.0, 22.0 ],
									"text" : "*~ 0.457407"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1980.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.041716"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1965.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-168",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1950.0, 90.0, 67.0, 22.0 ],
									"text" : "*~ 0.08456"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-147",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1965.0, 390.0, 74.0, 22.0 ],
									"text" : "*~ 0.035566"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-148",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1950.0, 360.0, 74.0, 22.0 ],
									"text" : "*~ 0.028626"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-149",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1935.0, 330.0, 74.0, 22.0 ],
									"text" : "*~ 0.046947"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-150",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1920.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.035566"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-151",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1905.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-152",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1890.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-153",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1875.0, 210.0, 67.0, 22.0 ],
									"text" : "*~ 0.08456"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-154",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1860.0, 180.0, 74.0, 22.0 ],
									"text" : "*~ 0.041716"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-155",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1845.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.457407"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-156",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1830.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-157",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1815.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.069773"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-136",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1830.0, 390.0, 74.0, 22.0 ],
									"text" : "*~ 0.028626"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1815.0, 360.0, 74.0, 22.0 ],
									"text" : "*~ 0.035566"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-138",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1800.0, 330.0, 74.0, 22.0 ],
									"text" : "*~ 0.035566"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-139",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1785.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.046947"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-140",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1770.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-141",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1755.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1740.0, 210.0, 74.0, 22.0 ],
									"text" : "*~ 0.041716"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-143",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1725.0, 180.0, 67.0, 22.0 ],
									"text" : "*~ 0.08456"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-144",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1710.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.069773"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-145",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1695.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-146",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1680.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.457407"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-125",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1680.0, 390.0, 73.0, 22.0 ],
									"text" : "*~ 0.117366"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-126",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1665.0, 360.0, 74.0, 22.0 ],
									"text" : "*~ 0.053348"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-127",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1650.0, 330.0, 74.0, 22.0 ],
									"text" : "*~ 0.053348"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1635.0, 300.0, 67.0, 22.0 ],
									"text" : "*~ 0.03452"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-129",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1620.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.187125"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-130",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1605.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.036992"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1590.0, 210.0, 34.0, 22.0 ],
									"text" : "*~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1575.0, 180.0, 74.0, 22.0 ],
									"text" : "*~ 0.052032"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-133",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1560.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.064685"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-134",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1545.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.036992"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-135",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1530.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.029693"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1545.0, 390.0, 74.0, 22.0 ],
									"text" : "*~ 0.053348"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1530.0, 360.0, 73.0, 22.0 ],
									"text" : "*~ 0.117366"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-116",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1515.0, 330.0, 67.0, 22.0 ],
									"text" : "*~ 0.03452"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-117",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1500.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.053348"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-118",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1485.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.036992"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1470.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.187125"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1455.0, 210.0, 74.0, 22.0 ],
									"text" : "*~ 0.052032"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-121",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1440.0, 180.0, 34.0, 22.0 ],
									"text" : "*~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-122",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1425.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.029693"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-123",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1410.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.036992"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1395.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.064685"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1410.0, 390.0, 74.0, 22.0 ],
									"text" : "*~ 0.053348"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1395.0, 360.0, 67.0, 22.0 ],
									"text" : "*~ 0.03452"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1380.0, 330.0, 73.0, 22.0 ],
									"text" : "*~ 0.117366"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-106",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1365.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.053348"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1350.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.187125"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-108",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1335.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.036992"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1320.0, 210.0, 74.0, 22.0 ],
									"text" : "*~ 0.064685"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1305.0, 180.0, 74.0, 22.0 ],
									"text" : "*~ 0.029693"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-111",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1290.0, 150.0, 34.0, 22.0 ],
									"text" : "*~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1275.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.187125"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1260.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.052032"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1260.0, 390.0, 67.0, 22.0 ],
									"text" : "*~ 0.03452"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1245.0, 360.0, 74.0, 22.0 ],
									"text" : "*~ 0.053348"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-94",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1230.0, 330.0, 74.0, 22.0 ],
									"text" : "*~ 0.053348"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1215.0, 300.0, 73.0, 22.0 ],
									"text" : "*~ 0.117366"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1200.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.036992"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1185.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.187125"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1170.0, 210.0, 74.0, 22.0 ],
									"text" : "*~ 0.029693"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1155.0, 180.0, 74.0, 22.0 ],
									"text" : "*~ 0.064685"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-100",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1140.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.052032"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1125.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.187125"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-102",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1110.0, 90.0, 34.0, 22.0 ],
									"text" : "*~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1125.0, 390.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1110.0, 360.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1095.0, 330.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1080.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1065.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.043469"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1050.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.043469"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1035.0, 210.0, 74.0, 22.0 ],
									"text" : "*~ 0.071782"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1020.0, 180.0, 74.0, 22.0 ],
									"text" : "*~ 0.071782"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1005.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.029087"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 990.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.026081"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 975.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.029087"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 990.0, 390.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 975.0, 360.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 960.0, 330.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 945.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 930.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.130407"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 915.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.026081"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 900.0, 210.0, 67.0, 22.0 ],
									"text" : "*~ 0.08871"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 885.0, 180.0, 74.0, 22.0 ],
									"text" : "*~ 0.026999"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 870.0, 150.0, 67.0, 22.0 ],
									"text" : "*~ 0.08871"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 855.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.043469"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 840.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.026999"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 855.0, 390.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 840.0, 360.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 825.0, 330.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 810.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 795.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.026081"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 780.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.130407"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 765.0, 210.0, 74.0, 22.0 ],
									"text" : "*~ 0.026999"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 750.0, 180.0, 67.0, 22.0 ],
									"text" : "*~ 0.08871"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 735.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.026999"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 720.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.043469"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 705.0, 90.0, 67.0, 22.0 ],
									"text" : "*~ 0.08871"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 705.0, 390.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 690.0, 360.0, 74.0, 22.0 ],
									"text" : "*~ 0.052197"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 675.0, 330.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 660.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.212824"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 645.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.043469"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 630.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.043469"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 615.0, 210.0, 74.0, 22.0 ],
									"text" : "*~ 0.029087"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 600.0, 180.0, 74.0, 22.0 ],
									"text" : "*~ 0.029087"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 585.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.071782"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 570.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.130407"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 555.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.071782"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 570.0, 390.0, 74.0, 22.0 ],
									"text" : "*~ 0.351066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 555.0, 360.0, 74.0, 22.0 ],
									"text" : "*~ 0.351066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 540.0, 330.0, 74.0, 22.0 ],
									"text" : "*~ 0.080076"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 525.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.080076"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 510.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.030886"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 495.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.030886"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 480.0, 210.0, 74.0, 22.0 ],
									"text" : "*~ 0.037437"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 465.0, 180.0, 74.0, 22.0 ],
									"text" : "*~ 0.037437"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 450.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.024787"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 435.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.023473"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 420.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.024787"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 435.0, 390.0, 74.0, 22.0 ],
									"text" : "*~ 0.351066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 420.0, 360.0, 74.0, 22.0 ],
									"text" : "*~ 0.080076"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 405.0, 330.0, 74.0, 22.0 ],
									"text" : "*~ 0.351066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 390.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.080076"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 375.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.045141"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 360.0, 240.0, 54.0, 22.0 ],
									"text" : "*~ 0.032"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 345.0, 210.0, 74.0, 22.0 ],
									"text" : "*~ 0.040097"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 330.0, 180.0, 74.0, 22.0 ],
									"text" : "*~ 0.023744"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 315.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.040097"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 300.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.030886"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 285.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.023744"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 300.0, 390.0, 74.0, 22.0 ],
									"text" : "*~ 0.080076"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 285.0, 360.0, 74.0, 22.0 ],
									"text" : "*~ 0.351066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 270.0, 330.0, 74.0, 22.0 ],
									"text" : "*~ 0.080076"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 255.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.351066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 240.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.023473"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 225.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.045141"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 210.0, 210.0, 74.0, 22.0 ],
									"text" : "*~ 0.023744"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 195.0, 180.0, 74.0, 22.0 ],
									"text" : "*~ 0.040097"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 180.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.023744"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 165.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.030886"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 150.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.040097"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 150.0, 390.0, 74.0, 22.0 ],
									"text" : "*~ 0.080076"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 135.0, 360.0, 74.0, 22.0 ],
									"text" : "*~ 0.080076"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 120.0, 330.0, 74.0, 22.0 ],
									"text" : "*~ 0.351066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 105.0, 300.0, 74.0, 22.0 ],
									"text" : "*~ 0.351066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 90.0, 270.0, 74.0, 22.0 ],
									"text" : "*~ 0.030886"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 75.0, 240.0, 74.0, 22.0 ],
									"text" : "*~ 0.030886"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 60.0, 210.0, 74.0, 22.0 ],
									"text" : "*~ 0.024787"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 180.0, 74.0, 22.0 ],
									"text" : "*~ 0.024787"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 30.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.037437"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 15.0, 120.0, 74.0, 22.0 ],
									"text" : "*~ 0.045141"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 0.0, 90.0, 74.0, 22.0 ],
									"text" : "*~ 0.037437"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 810.0, 2265.0, 22.0 ],
									"text" : "dac~ 1 2 3 4 5 6 7 8 9 10 11"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"midpoints" : [ 9.5, 75.0, 135.0, 75.0, 135.0, 195.0, 165.0, 195.0, 165.0, 294.0, 114.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"midpoints" : [ 9.5, 75.0, 135.0, 75.0, 135.0, 195.0, 180.0, 195.0, 180.0, 324.0, 129.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"midpoints" : [ 9.5, 75.0, 135.0, 75.0, 135.0, 195.0, 180.0, 195.0, 180.0, 285.0, 195.0, 285.0, 195.0, 354.0, 144.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"midpoints" : [ 9.5, 75.0, 135.0, 75.0, 135.0, 195.0, 180.0, 195.0, 180.0, 285.0, 210.0, 285.0, 210.0, 384.0, 159.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 9.5, 33.0, 9.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 9.5, 75.0, 84.0, 75.0, 84.0, 114.0, 24.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"midpoints" : [ 9.5, 75.0, 90.0, 75.0, 90.0, 144.0, 39.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"midpoints" : [ 9.5, 75.0, 105.0, 75.0, 105.0, 174.0, 54.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 9.5, 75.0, 120.0, 75.0, 120.0, 204.0, 69.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"midpoints" : [ 9.5, 75.0, 135.0, 75.0, 135.0, 234.0, 84.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 9.5, 75.0, 135.0, 75.0, 135.0, 195.0, 150.0, 195.0, 150.0, 264.0, 99.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 114.5, 780.0, 1581.700000000000045, 780.0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 1149.5, 297.0, 1077.0, 297.0, 1077.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 1134.5, 267.0, 1062.0, 267.0, 1062.0, 375.0, 1074.0, 375.0, 1074.0, 795.0, 234.099999999999994, 795.0 ],
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 1119.5, 114.0, 1074.0, 114.0, 1074.0, 75.0, 129.0, 75.0, 129.0, 207.0, 45.0, 207.0, 45.0, 780.0, 9.5, 780.0 ],
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 1419.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 1404.5, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 1389.5, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 1374.5, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 1359.5, 804.0, 1357.099999999999909, 804.0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 1344.5, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 1329.5, 375.0, 1338.0, 375.0, 1338.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-109", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 129.5, 780.0, 1806.299999999999955, 780.0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 1314.5, 345.0, 1338.0, 345.0, 1338.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 1299.5, 315.0, 1338.0, 315.0, 1338.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-111", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 1284.5, 297.0, 1212.0, 297.0, 1212.0, 795.0, 234.099999999999994, 795.0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 1269.5, 255.0, 1320.0, 255.0, 1320.0, 345.0, 1338.0, 345.0, 1338.0, 780.0, 9.5, 780.0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 1554.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 1539.5, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 1524.5, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 1509.5, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-117", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 1494.5, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 1479.5, 375.0, 1494.0, 375.0, 1494.0, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 144.5, 595.5, 2030.900000000000091, 595.5 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 1464.5, 345.0, 1494.0, 345.0, 1494.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-120", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 1449.5, 315.0, 1485.0, 315.0, 1485.0, 375.0, 1494.0, 375.0, 1494.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-121", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 1434.5, 297.0, 1350.0, 297.0, 1350.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-122", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 1419.5, 267.0, 1347.0, 267.0, 1347.0, 795.0, 234.099999999999994, 795.0 ],
									"source" : [ "obj-123", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 1404.5, 460.5, 9.5, 460.5 ],
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 1689.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-125", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 1674.5, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 1659.5, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-127", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 1644.5, 324.0, 1635.0, 324.0, 1635.0, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 1629.5, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 159.5, 610.5, 2255.5, 610.5 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 1614.5, 375.0, 1629.0, 375.0, 1629.0, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 1599.5, 345.0, 1629.0, 345.0, 1629.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 1584.5, 315.0, 1620.0, 315.0, 1620.0, 375.0, 1629.0, 375.0, 1629.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-132", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 1569.5, 297.0, 1497.0, 297.0, 1497.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-133", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 1554.5, 267.0, 1482.0, 267.0, 1482.0, 375.0, 1494.0, 375.0, 1494.0, 795.0, 234.099999999999994, 795.0 ],
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 1539.5, 460.5, 9.5, 460.5 ],
									"source" : [ "obj-135", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 1839.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 1824.5, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 1809.5, 804.0, 1806.299999999999955, 804.0 ],
									"source" : [ "obj-138", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 1794.5, 324.0, 1764.0, 324.0, 1764.0, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-139", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 309.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 1779.5, 294.0, 1770.0, 294.0, 1770.0, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-140", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 1764.5, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-141", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 1749.5, 375.0, 1764.0, 375.0, 1764.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 1734.5, 345.0, 1764.0, 345.0, 1764.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 1719.5, 315.0, 1764.0, 315.0, 1764.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-144", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 1704.5, 327.0, 1635.0, 327.0, 1635.0, 795.0, 234.099999999999994, 795.0 ],
									"source" : [ "obj-145", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 1689.5, 460.5, 9.5, 460.5 ],
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 1974.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-147", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 1959.5, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 1944.5, 354.0, 1914.0, 354.0, 1914.0, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 294.5, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 1929.5, 324.0, 1920.0, 324.0, 1920.0, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 1914.5, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 1899.5, 375.0, 1914.0, 375.0, 1914.0, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-152", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 1884.5, 345.0, 1914.0, 345.0, 1914.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 1869.5, 315.0, 1905.0, 315.0, 1905.0, 375.0, 1914.0, 375.0, 1914.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-154", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 1854.5, 297.0, 1770.0, 297.0, 1770.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 1839.5, 475.5, 234.099999999999994, 475.5 ],
									"source" : [ "obj-156", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 1824.5, 460.5, 9.5, 460.5 ],
									"source" : [ "obj-157", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 2109.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-158", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 2094.5, 384.0, 2049.0, 384.0, 2049.0, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-159", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 279.5, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 2079.5, 354.0, 2049.0, 354.0, 2049.0, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 2064.5, 324.0, 2055.0, 324.0, 2055.0, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-161", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 2049.5, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-162", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 2034.5, 375.0, 2049.0, 375.0, 2049.0, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 2019.5, 345.0, 2049.0, 345.0, 2049.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-164", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 2004.5, 315.0, 2040.0, 315.0, 2040.0, 375.0, 2049.0, 375.0, 2049.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-165", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 1989.5, 297.0, 1917.0, 297.0, 1917.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 1974.5, 475.5, 234.099999999999994, 475.5 ],
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 1959.5, 114.0, 1914.0, 114.0, 1914.0, 75.0, 129.0, 75.0, 129.0, 207.0, 45.0, 207.0, 45.0, 780.0, 9.5, 780.0 ],
									"source" : [ "obj-168", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 2244.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 264.5, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 2229.5, 384.0, 2184.0, 384.0, 2184.0, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-170", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 2214.5, 354.0, 2184.0, 354.0, 2184.0, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-171", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 2199.5, 324.0, 2190.0, 324.0, 2190.0, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-172", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 2184.5, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-173", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 2169.5, 375.0, 2184.0, 375.0, 2184.0, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-174", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 2154.5, 345.0, 2184.0, 345.0, 2184.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-175", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 2139.5, 315.0, 2175.0, 315.0, 2175.0, 375.0, 2184.0, 375.0, 2184.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-176", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 2124.5, 297.0, 2052.0, 297.0, 2052.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-177", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 2109.5, 475.5, 234.099999999999994, 475.5 ],
									"source" : [ "obj-178", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 2094.5, 460.5, 9.5, 460.5 ],
									"source" : [ "obj-179", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 249.5, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"midpoints" : [ 429.5, 75.0, 405.0, 75.0, 405.0, 165.0, 435.0, 165.0, 435.0, 255.0, 480.0, 255.0, 480.0, 315.0, 510.0, 315.0, 510.0, 375.0, 540.0, 375.0, 540.0, 384.0, 579.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"midpoints" : [ 429.5, 75.0, 405.0, 75.0, 405.0, 165.0, 435.0, 165.0, 435.0, 255.0, 480.0, 255.0, 480.0, 315.0, 510.0, 315.0, 510.0, 354.0, 564.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"midpoints" : [ 429.5, 75.0, 405.0, 75.0, 405.0, 165.0, 435.0, 165.0, 435.0, 255.0, 480.0, 255.0, 480.0, 315.0, 510.0, 315.0, 510.0, 324.0, 549.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"midpoints" : [ 429.5, 75.0, 405.0, 75.0, 405.0, 165.0, 435.0, 165.0, 435.0, 255.0, 480.0, 255.0, 480.0, 294.0, 534.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"midpoints" : [ 429.5, 75.0, 405.0, 75.0, 405.0, 165.0, 435.0, 165.0, 435.0, 255.0, 480.0, 255.0, 480.0, 264.0, 519.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"midpoints" : [ 429.5, 75.0, 405.0, 75.0, 405.0, 165.0, 435.0, 165.0, 435.0, 234.0, 504.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"midpoints" : [ 429.5, 75.0, 405.0, 75.0, 405.0, 165.0, 435.0, 165.0, 435.0, 204.0, 489.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 429.5, 75.0, 405.0, 75.0, 405.0, 165.0, 435.0, 165.0, 435.0, 174.0, 474.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"midpoints" : [ 429.5, 75.0, 405.0, 75.0, 405.0, 144.0, 459.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 429.5, 75.0, 417.0, 75.0, 417.0, 114.0, 444.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"midpoints" : [ 429.5, 33.0, 429.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"midpoints" : [ 294.5, 75.0, 270.0, 75.0, 270.0, 165.0, 300.0, 165.0, 300.0, 225.0, 330.0, 225.0, 330.0, 285.0, 360.0, 285.0, 360.0, 345.0, 390.0, 345.0, 390.0, 384.0, 444.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 294.5, 75.0, 270.0, 75.0, 270.0, 165.0, 300.0, 165.0, 300.0, 225.0, 330.0, 225.0, 330.0, 285.0, 360.0, 285.0, 360.0, 345.0, 390.0, 345.0, 390.0, 354.0, 429.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"midpoints" : [ 294.5, 75.0, 270.0, 75.0, 270.0, 165.0, 300.0, 165.0, 300.0, 225.0, 330.0, 225.0, 330.0, 285.0, 360.0, 285.0, 360.0, 324.0, 414.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"midpoints" : [ 294.5, 75.0, 270.0, 75.0, 270.0, 165.0, 300.0, 165.0, 300.0, 225.0, 330.0, 225.0, 330.0, 285.0, 360.0, 285.0, 360.0, 294.0, 399.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"midpoints" : [ 294.5, 75.0, 270.0, 75.0, 270.0, 165.0, 300.0, 165.0, 300.0, 225.0, 330.0, 225.0, 330.0, 264.0, 384.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"midpoints" : [ 294.5, 75.0, 270.0, 75.0, 270.0, 165.0, 300.0, 165.0, 300.0, 225.0, 330.0, 225.0, 330.0, 234.0, 369.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"midpoints" : [ 294.5, 75.0, 270.0, 75.0, 270.0, 165.0, 300.0, 165.0, 300.0, 204.0, 354.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"midpoints" : [ 294.5, 75.0, 270.0, 75.0, 270.0, 165.0, 300.0, 165.0, 300.0, 174.0, 339.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"midpoints" : [ 294.5, 75.0, 270.0, 75.0, 270.0, 144.0, 324.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 294.5, 75.0, 282.0, 75.0, 282.0, 114.0, 309.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"midpoints" : [ 294.5, 33.0, 294.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"midpoints" : [ 984.5, 75.0, 960.0, 75.0, 960.0, 165.0, 990.0, 165.0, 990.0, 225.0, 1020.0, 225.0, 1020.0, 285.0, 1050.0, 285.0, 1050.0, 345.0, 1080.0, 345.0, 1080.0, 384.0, 1134.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"midpoints" : [ 984.5, 75.0, 960.0, 75.0, 960.0, 165.0, 990.0, 165.0, 990.0, 225.0, 1020.0, 225.0, 1020.0, 285.0, 1050.0, 285.0, 1050.0, 345.0, 1080.0, 345.0, 1080.0, 354.0, 1119.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"midpoints" : [ 984.5, 75.0, 960.0, 75.0, 960.0, 165.0, 990.0, 165.0, 990.0, 225.0, 1020.0, 225.0, 1020.0, 285.0, 1050.0, 285.0, 1050.0, 324.0, 1104.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"midpoints" : [ 984.5, 75.0, 960.0, 75.0, 960.0, 165.0, 990.0, 165.0, 990.0, 225.0, 1020.0, 225.0, 1020.0, 285.0, 1050.0, 285.0, 1050.0, 294.0, 1089.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"midpoints" : [ 984.5, 75.0, 960.0, 75.0, 960.0, 165.0, 990.0, 165.0, 990.0, 225.0, 1020.0, 225.0, 1020.0, 264.0, 1074.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"midpoints" : [ 984.5, 75.0, 960.0, 75.0, 960.0, 165.0, 990.0, 165.0, 990.0, 225.0, 1020.0, 225.0, 1020.0, 234.0, 1059.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"midpoints" : [ 984.5, 75.0, 960.0, 75.0, 960.0, 165.0, 990.0, 165.0, 990.0, 204.0, 1044.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"midpoints" : [ 984.5, 75.0, 960.0, 75.0, 960.0, 165.0, 990.0, 165.0, 990.0, 174.0, 1029.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"midpoints" : [ 984.5, 75.0, 960.0, 75.0, 960.0, 144.0, 1014.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"midpoints" : [ 984.5, 75.0, 972.0, 75.0, 972.0, 114.0, 999.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"midpoints" : [ 984.5, 33.0, 984.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"midpoints" : [ 849.5, 75.0, 825.0, 75.0, 825.0, 165.0, 855.0, 165.0, 855.0, 225.0, 885.0, 225.0, 885.0, 285.0, 915.0, 285.0, 915.0, 345.0, 945.0, 345.0, 945.0, 384.0, 999.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"midpoints" : [ 849.5, 75.0, 825.0, 75.0, 825.0, 165.0, 855.0, 165.0, 855.0, 225.0, 885.0, 225.0, 885.0, 285.0, 915.0, 285.0, 915.0, 345.0, 945.0, 345.0, 945.0, 354.0, 984.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"midpoints" : [ 849.5, 75.0, 825.0, 75.0, 825.0, 165.0, 855.0, 165.0, 855.0, 225.0, 885.0, 225.0, 885.0, 285.0, 915.0, 285.0, 915.0, 324.0, 969.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"midpoints" : [ 849.5, 75.0, 825.0, 75.0, 825.0, 165.0, 855.0, 165.0, 855.0, 225.0, 885.0, 225.0, 885.0, 285.0, 915.0, 285.0, 915.0, 294.0, 954.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"midpoints" : [ 849.5, 75.0, 825.0, 75.0, 825.0, 165.0, 855.0, 165.0, 855.0, 225.0, 885.0, 225.0, 885.0, 264.0, 939.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"midpoints" : [ 849.5, 75.0, 825.0, 75.0, 825.0, 165.0, 855.0, 165.0, 855.0, 225.0, 885.0, 225.0, 885.0, 234.0, 924.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"midpoints" : [ 849.5, 75.0, 825.0, 75.0, 825.0, 165.0, 855.0, 165.0, 855.0, 204.0, 909.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"midpoints" : [ 849.5, 75.0, 825.0, 75.0, 825.0, 165.0, 855.0, 165.0, 855.0, 174.0, 894.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"midpoints" : [ 849.5, 75.0, 825.0, 75.0, 825.0, 144.0, 879.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"midpoints" : [ 849.5, 75.0, 837.0, 75.0, 837.0, 114.0, 864.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"midpoints" : [ 849.5, 33.0, 849.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-184", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"midpoints" : [ 714.5, 75.0, 690.0, 75.0, 690.0, 195.0, 735.0, 195.0, 735.0, 285.0, 780.0, 285.0, 780.0, 375.0, 825.0, 375.0, 825.0, 384.0, 864.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"midpoints" : [ 714.5, 75.0, 690.0, 75.0, 690.0, 195.0, 735.0, 195.0, 735.0, 285.0, 780.0, 285.0, 780.0, 354.0, 849.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"midpoints" : [ 714.5, 75.0, 690.0, 75.0, 690.0, 195.0, 735.0, 195.0, 735.0, 285.0, 780.0, 285.0, 780.0, 324.0, 834.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"midpoints" : [ 714.5, 75.0, 690.0, 75.0, 690.0, 195.0, 735.0, 195.0, 735.0, 285.0, 780.0, 285.0, 780.0, 294.0, 819.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"midpoints" : [ 714.5, 75.0, 690.0, 75.0, 690.0, 195.0, 735.0, 195.0, 735.0, 264.0, 804.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"midpoints" : [ 714.5, 75.0, 690.0, 75.0, 690.0, 195.0, 735.0, 195.0, 735.0, 234.0, 789.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"midpoints" : [ 714.5, 75.0, 690.0, 75.0, 690.0, 195.0, 735.0, 195.0, 735.0, 204.0, 774.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"midpoints" : [ 714.5, 75.0, 690.0, 75.0, 690.0, 174.0, 759.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"midpoints" : [ 714.5, 75.0, 690.0, 75.0, 690.0, 144.0, 744.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"midpoints" : [ 714.5, 75.0, 702.0, 75.0, 702.0, 114.0, 729.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"midpoints" : [ 714.5, 33.0, 714.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-185", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"midpoints" : [ 564.5, 75.0, 540.0, 75.0, 540.0, 165.0, 570.0, 165.0, 570.0, 225.0, 600.0, 225.0, 600.0, 285.0, 630.0, 285.0, 630.0, 345.0, 660.0, 345.0, 660.0, 384.0, 714.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"midpoints" : [ 564.5, 75.0, 540.0, 75.0, 540.0, 165.0, 570.0, 165.0, 570.0, 225.0, 600.0, 225.0, 600.0, 285.0, 630.0, 285.0, 630.0, 345.0, 660.0, 345.0, 660.0, 354.0, 699.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"midpoints" : [ 564.5, 75.0, 540.0, 75.0, 540.0, 165.0, 570.0, 165.0, 570.0, 225.0, 600.0, 225.0, 600.0, 285.0, 630.0, 285.0, 630.0, 324.0, 684.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"midpoints" : [ 564.5, 75.0, 540.0, 75.0, 540.0, 165.0, 570.0, 165.0, 570.0, 225.0, 600.0, 225.0, 600.0, 285.0, 630.0, 285.0, 630.0, 294.0, 669.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"midpoints" : [ 564.5, 75.0, 540.0, 75.0, 540.0, 165.0, 570.0, 165.0, 570.0, 225.0, 600.0, 225.0, 600.0, 264.0, 654.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"midpoints" : [ 564.5, 75.0, 540.0, 75.0, 540.0, 165.0, 570.0, 165.0, 570.0, 225.0, 600.0, 225.0, 600.0, 234.0, 639.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"midpoints" : [ 564.5, 75.0, 540.0, 75.0, 540.0, 165.0, 570.0, 165.0, 570.0, 204.0, 624.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"midpoints" : [ 564.5, 75.0, 540.0, 75.0, 540.0, 165.0, 570.0, 165.0, 570.0, 174.0, 609.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"midpoints" : [ 564.5, 75.0, 540.0, 75.0, 540.0, 144.0, 594.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"midpoints" : [ 564.5, 75.0, 552.0, 75.0, 552.0, 114.0, 579.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"midpoints" : [ 564.5, 33.0, 564.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-186", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"midpoints" : [ 1539.5, 75.0, 1515.0, 75.0, 1515.0, 195.0, 1560.0, 195.0, 1560.0, 255.0, 1590.0, 255.0, 1590.0, 315.0, 1620.0, 315.0, 1620.0, 375.0, 1650.0, 375.0, 1650.0, 384.0, 1689.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 0 ],
									"midpoints" : [ 1539.5, 75.0, 1515.0, 75.0, 1515.0, 195.0, 1560.0, 195.0, 1560.0, 255.0, 1590.0, 255.0, 1590.0, 315.0, 1620.0, 315.0, 1620.0, 354.0, 1674.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"midpoints" : [ 1539.5, 75.0, 1515.0, 75.0, 1515.0, 195.0, 1560.0, 195.0, 1560.0, 255.0, 1590.0, 255.0, 1590.0, 315.0, 1620.0, 315.0, 1620.0, 324.0, 1659.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"midpoints" : [ 1539.5, 75.0, 1515.0, 75.0, 1515.0, 195.0, 1560.0, 195.0, 1560.0, 255.0, 1590.0, 255.0, 1590.0, 294.0, 1644.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"midpoints" : [ 1539.5, 75.0, 1515.0, 75.0, 1515.0, 195.0, 1560.0, 195.0, 1560.0, 255.0, 1590.0, 255.0, 1590.0, 264.0, 1629.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 0 ],
									"midpoints" : [ 1539.5, 75.0, 1515.0, 75.0, 1515.0, 195.0, 1560.0, 195.0, 1560.0, 234.0, 1614.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"midpoints" : [ 1539.5, 75.0, 1515.0, 75.0, 1515.0, 195.0, 1560.0, 195.0, 1560.0, 204.0, 1599.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"midpoints" : [ 1539.5, 75.0, 1515.0, 75.0, 1515.0, 174.0, 1584.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 0 ],
									"midpoints" : [ 1539.5, 75.0, 1515.0, 75.0, 1515.0, 144.0, 1569.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"midpoints" : [ 1539.5, 75.0, 1527.0, 75.0, 1527.0, 114.0, 1554.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 0 ],
									"midpoints" : [ 1539.5, 33.0, 1539.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-187", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-114", 0 ],
									"midpoints" : [ 1404.5, 75.0, 1380.0, 75.0, 1380.0, 165.0, 1410.0, 165.0, 1410.0, 225.0, 1440.0, 225.0, 1440.0, 285.0, 1470.0, 285.0, 1470.0, 345.0, 1500.0, 345.0, 1500.0, 384.0, 1554.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-115", 0 ],
									"midpoints" : [ 1404.5, 75.0, 1380.0, 75.0, 1380.0, 165.0, 1410.0, 165.0, 1410.0, 225.0, 1440.0, 225.0, 1440.0, 285.0, 1470.0, 285.0, 1470.0, 345.0, 1500.0, 345.0, 1500.0, 354.0, 1539.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"midpoints" : [ 1404.5, 75.0, 1380.0, 75.0, 1380.0, 165.0, 1410.0, 165.0, 1410.0, 225.0, 1440.0, 225.0, 1440.0, 285.0, 1470.0, 285.0, 1470.0, 324.0, 1524.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 0 ],
									"midpoints" : [ 1404.5, 75.0, 1380.0, 75.0, 1380.0, 165.0, 1410.0, 165.0, 1410.0, 225.0, 1440.0, 225.0, 1440.0, 285.0, 1470.0, 285.0, 1470.0, 294.0, 1509.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"midpoints" : [ 1404.5, 75.0, 1380.0, 75.0, 1380.0, 165.0, 1410.0, 165.0, 1410.0, 225.0, 1440.0, 225.0, 1440.0, 264.0, 1494.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"midpoints" : [ 1404.5, 75.0, 1380.0, 75.0, 1380.0, 165.0, 1410.0, 165.0, 1410.0, 225.0, 1440.0, 225.0, 1440.0, 234.0, 1479.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-120", 0 ],
									"midpoints" : [ 1404.5, 75.0, 1380.0, 75.0, 1380.0, 165.0, 1410.0, 165.0, 1410.0, 204.0, 1464.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 0 ],
									"midpoints" : [ 1404.5, 75.0, 1380.0, 75.0, 1380.0, 165.0, 1410.0, 165.0, 1410.0, 174.0, 1449.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-122", 0 ],
									"midpoints" : [ 1404.5, 75.0, 1380.0, 75.0, 1380.0, 144.0, 1434.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-123", 0 ],
									"midpoints" : [ 1404.5, 75.0, 1392.0, 75.0, 1392.0, 114.0, 1419.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"midpoints" : [ 1404.5, 33.0, 1404.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-188", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"midpoints" : [ 1269.5, 75.0, 1245.0, 75.0, 1245.0, 195.0, 1290.0, 195.0, 1290.0, 285.0, 1335.0, 285.0, 1335.0, 375.0, 1380.0, 375.0, 1380.0, 384.0, 1419.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"midpoints" : [ 1269.5, 75.0, 1245.0, 75.0, 1245.0, 195.0, 1290.0, 195.0, 1290.0, 285.0, 1335.0, 285.0, 1335.0, 354.0, 1404.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"midpoints" : [ 1269.5, 75.0, 1245.0, 75.0, 1245.0, 195.0, 1290.0, 195.0, 1290.0, 285.0, 1335.0, 285.0, 1335.0, 324.0, 1389.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"midpoints" : [ 1269.5, 75.0, 1245.0, 75.0, 1245.0, 195.0, 1290.0, 195.0, 1290.0, 285.0, 1335.0, 285.0, 1335.0, 294.0, 1374.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"midpoints" : [ 1269.5, 75.0, 1245.0, 75.0, 1245.0, 195.0, 1290.0, 195.0, 1290.0, 264.0, 1359.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"midpoints" : [ 1269.5, 75.0, 1245.0, 75.0, 1245.0, 195.0, 1290.0, 195.0, 1290.0, 234.0, 1344.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"midpoints" : [ 1269.5, 75.0, 1245.0, 75.0, 1245.0, 195.0, 1290.0, 195.0, 1290.0, 204.0, 1329.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"midpoints" : [ 1269.5, 75.0, 1245.0, 75.0, 1245.0, 174.0, 1314.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 0 ],
									"midpoints" : [ 1269.5, 75.0, 1245.0, 75.0, 1245.0, 144.0, 1299.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"midpoints" : [ 1269.5, 75.0, 1257.0, 75.0, 1257.0, 114.0, 1284.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"midpoints" : [ 1269.5, 33.0, 1269.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-189", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 234.5, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"midpoints" : [ 1119.5, 75.0, 1095.0, 75.0, 1095.0, 144.0, 1149.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"midpoints" : [ 1119.5, 75.0, 1155.0, 75.0, 1155.0, 114.0, 1134.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-102", 0 ],
									"midpoints" : [ 1119.5, 33.0, 1119.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"midpoints" : [ 1119.5, 75.0, 1095.0, 75.0, 1095.0, 165.0, 1125.0, 165.0, 1125.0, 225.0, 1155.0, 225.0, 1155.0, 285.0, 1185.0, 285.0, 1185.0, 345.0, 1215.0, 345.0, 1215.0, 384.0, 1269.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"midpoints" : [ 1119.5, 75.0, 1095.0, 75.0, 1095.0, 165.0, 1125.0, 165.0, 1125.0, 225.0, 1155.0, 225.0, 1155.0, 285.0, 1185.0, 285.0, 1185.0, 345.0, 1215.0, 345.0, 1215.0, 354.0, 1254.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"midpoints" : [ 1119.5, 75.0, 1095.0, 75.0, 1095.0, 165.0, 1125.0, 165.0, 1125.0, 225.0, 1155.0, 225.0, 1155.0, 285.0, 1185.0, 285.0, 1185.0, 324.0, 1239.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"midpoints" : [ 1119.5, 75.0, 1095.0, 75.0, 1095.0, 165.0, 1125.0, 165.0, 1125.0, 225.0, 1155.0, 225.0, 1155.0, 285.0, 1185.0, 285.0, 1185.0, 294.0, 1224.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"midpoints" : [ 1119.5, 75.0, 1095.0, 75.0, 1095.0, 165.0, 1125.0, 165.0, 1125.0, 225.0, 1155.0, 225.0, 1155.0, 264.0, 1209.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"midpoints" : [ 1119.5, 75.0, 1095.0, 75.0, 1095.0, 165.0, 1125.0, 165.0, 1125.0, 225.0, 1155.0, 225.0, 1155.0, 234.0, 1194.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"midpoints" : [ 1119.5, 75.0, 1095.0, 75.0, 1095.0, 165.0, 1125.0, 165.0, 1125.0, 204.0, 1179.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"midpoints" : [ 1119.5, 75.0, 1095.0, 75.0, 1095.0, 165.0, 1125.0, 165.0, 1125.0, 174.0, 1164.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-190", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-169", 0 ],
									"midpoints" : [ 2094.5, 75.0, 2070.0, 75.0, 2070.0, 165.0, 2100.0, 165.0, 2100.0, 225.0, 2130.0, 225.0, 2130.0, 285.0, 2160.0, 285.0, 2160.0, 345.0, 2190.0, 345.0, 2190.0, 384.0, 2244.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-170", 0 ],
									"midpoints" : [ 2094.5, 75.0, 2070.0, 75.0, 2070.0, 165.0, 2100.0, 165.0, 2100.0, 225.0, 2130.0, 225.0, 2130.0, 285.0, 2160.0, 285.0, 2160.0, 345.0, 2190.0, 345.0, 2190.0, 354.0, 2229.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-171", 0 ],
									"midpoints" : [ 2094.5, 75.0, 2070.0, 75.0, 2070.0, 165.0, 2100.0, 165.0, 2100.0, 225.0, 2130.0, 225.0, 2130.0, 285.0, 2160.0, 285.0, 2160.0, 324.0, 2214.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-172", 0 ],
									"midpoints" : [ 2094.5, 75.0, 2070.0, 75.0, 2070.0, 165.0, 2100.0, 165.0, 2100.0, 225.0, 2130.0, 225.0, 2130.0, 285.0, 2160.0, 285.0, 2160.0, 294.0, 2199.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-173", 0 ],
									"midpoints" : [ 2094.5, 75.0, 2070.0, 75.0, 2070.0, 165.0, 2100.0, 165.0, 2100.0, 225.0, 2130.0, 225.0, 2130.0, 264.0, 2184.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-174", 0 ],
									"midpoints" : [ 2094.5, 75.0, 2070.0, 75.0, 2070.0, 165.0, 2100.0, 165.0, 2100.0, 225.0, 2130.0, 225.0, 2130.0, 234.0, 2169.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-175", 0 ],
									"midpoints" : [ 2094.5, 75.0, 2070.0, 75.0, 2070.0, 165.0, 2100.0, 165.0, 2100.0, 204.0, 2154.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-176", 0 ],
									"midpoints" : [ 2094.5, 75.0, 2070.0, 75.0, 2070.0, 165.0, 2100.0, 165.0, 2100.0, 174.0, 2139.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-177", 0 ],
									"midpoints" : [ 2094.5, 75.0, 2070.0, 75.0, 2070.0, 144.0, 2124.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-178", 0 ],
									"midpoints" : [ 2094.5, 75.0, 2082.0, 75.0, 2082.0, 114.0, 2109.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-179", 0 ],
									"midpoints" : [ 2094.5, 33.0, 2094.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-191", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-158", 0 ],
									"midpoints" : [ 1959.5, 75.0, 1935.0, 75.0, 1935.0, 165.0, 1965.0, 165.0, 1965.0, 225.0, 1995.0, 225.0, 1995.0, 285.0, 2025.0, 285.0, 2025.0, 345.0, 2055.0, 345.0, 2055.0, 384.0, 2109.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-159", 0 ],
									"midpoints" : [ 1959.5, 75.0, 1935.0, 75.0, 1935.0, 165.0, 1965.0, 165.0, 1965.0, 225.0, 1995.0, 225.0, 1995.0, 285.0, 2025.0, 285.0, 2025.0, 345.0, 2055.0, 345.0, 2055.0, 354.0, 2094.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-160", 0 ],
									"midpoints" : [ 1959.5, 75.0, 1935.0, 75.0, 1935.0, 165.0, 1965.0, 165.0, 1965.0, 225.0, 1995.0, 225.0, 1995.0, 285.0, 2025.0, 285.0, 2025.0, 324.0, 2079.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-161", 0 ],
									"midpoints" : [ 1959.5, 75.0, 1935.0, 75.0, 1935.0, 165.0, 1965.0, 165.0, 1965.0, 225.0, 1995.0, 225.0, 1995.0, 285.0, 2025.0, 285.0, 2025.0, 294.0, 2064.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-162", 0 ],
									"midpoints" : [ 1959.5, 75.0, 1935.0, 75.0, 1935.0, 165.0, 1965.0, 165.0, 1965.0, 225.0, 1995.0, 225.0, 1995.0, 264.0, 2049.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-163", 0 ],
									"midpoints" : [ 1959.5, 75.0, 1935.0, 75.0, 1935.0, 165.0, 1965.0, 165.0, 1965.0, 225.0, 1995.0, 225.0, 1995.0, 234.0, 2034.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-164", 0 ],
									"midpoints" : [ 1959.5, 75.0, 1935.0, 75.0, 1935.0, 165.0, 1965.0, 165.0, 1965.0, 204.0, 2019.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-165", 0 ],
									"midpoints" : [ 1959.5, 75.0, 1935.0, 75.0, 1935.0, 165.0, 1965.0, 165.0, 1965.0, 174.0, 2004.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-166", 0 ],
									"midpoints" : [ 1959.5, 75.0, 1935.0, 75.0, 1935.0, 144.0, 1989.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-167", 0 ],
									"midpoints" : [ 1959.5, 75.0, 1947.0, 75.0, 1947.0, 114.0, 1974.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-168", 0 ],
									"midpoints" : [ 1959.5, 33.0, 1959.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-192", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"midpoints" : [ 1824.5, 75.0, 1800.0, 75.0, 1800.0, 165.0, 1830.0, 165.0, 1830.0, 225.0, 1860.0, 225.0, 1860.0, 285.0, 1890.0, 285.0, 1890.0, 345.0, 1920.0, 345.0, 1920.0, 384.0, 1974.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"midpoints" : [ 1824.5, 75.0, 1800.0, 75.0, 1800.0, 165.0, 1830.0, 165.0, 1830.0, 225.0, 1860.0, 225.0, 1860.0, 285.0, 1890.0, 285.0, 1890.0, 345.0, 1920.0, 345.0, 1920.0, 354.0, 1959.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"midpoints" : [ 1824.5, 75.0, 1800.0, 75.0, 1800.0, 165.0, 1830.0, 165.0, 1830.0, 225.0, 1860.0, 225.0, 1860.0, 285.0, 1890.0, 285.0, 1890.0, 324.0, 1944.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"midpoints" : [ 1824.5, 75.0, 1800.0, 75.0, 1800.0, 165.0, 1830.0, 165.0, 1830.0, 225.0, 1860.0, 225.0, 1860.0, 285.0, 1890.0, 285.0, 1890.0, 294.0, 1929.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"midpoints" : [ 1824.5, 75.0, 1800.0, 75.0, 1800.0, 165.0, 1830.0, 165.0, 1830.0, 225.0, 1860.0, 225.0, 1860.0, 264.0, 1914.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-152", 0 ],
									"midpoints" : [ 1824.5, 75.0, 1800.0, 75.0, 1800.0, 165.0, 1830.0, 165.0, 1830.0, 225.0, 1860.0, 225.0, 1860.0, 234.0, 1899.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 0 ],
									"midpoints" : [ 1824.5, 75.0, 1800.0, 75.0, 1800.0, 165.0, 1830.0, 165.0, 1830.0, 204.0, 1884.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"midpoints" : [ 1824.5, 75.0, 1800.0, 75.0, 1800.0, 165.0, 1830.0, 165.0, 1830.0, 174.0, 1869.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 0 ],
									"midpoints" : [ 1824.5, 75.0, 1800.0, 75.0, 1800.0, 144.0, 1854.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-156", 0 ],
									"midpoints" : [ 1824.5, 75.0, 1812.0, 75.0, 1812.0, 114.0, 1839.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 0 ],
									"midpoints" : [ 1824.5, 33.0, 1824.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-193", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 0 ],
									"midpoints" : [ 1689.5, 75.0, 1665.0, 75.0, 1665.0, 225.0, 1725.0, 225.0, 1725.0, 315.0, 1770.0, 315.0, 1770.0, 384.0, 1839.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"midpoints" : [ 1689.5, 75.0, 1665.0, 75.0, 1665.0, 225.0, 1725.0, 225.0, 1725.0, 315.0, 1770.0, 315.0, 1770.0, 354.0, 1824.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 0 ],
									"midpoints" : [ 1689.5, 75.0, 1665.0, 75.0, 1665.0, 225.0, 1725.0, 225.0, 1725.0, 315.0, 1770.0, 315.0, 1770.0, 324.0, 1809.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-139", 0 ],
									"midpoints" : [ 1689.5, 75.0, 1665.0, 75.0, 1665.0, 225.0, 1725.0, 225.0, 1725.0, 294.0, 1794.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-140", 0 ],
									"midpoints" : [ 1689.5, 75.0, 1665.0, 75.0, 1665.0, 225.0, 1725.0, 225.0, 1725.0, 264.0, 1779.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 0 ],
									"midpoints" : [ 1689.5, 75.0, 1665.0, 75.0, 1665.0, 225.0, 1725.0, 225.0, 1725.0, 234.0, 1764.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"midpoints" : [ 1689.5, 75.0, 1665.0, 75.0, 1665.0, 204.0, 1749.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 0 ],
									"midpoints" : [ 1689.5, 75.0, 1665.0, 75.0, 1665.0, 174.0, 1734.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-144", 0 ],
									"midpoints" : [ 1689.5, 75.0, 1665.0, 75.0, 1665.0, 144.0, 1719.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-145", 0 ],
									"midpoints" : [ 1689.5, 75.0, 1677.0, 75.0, 1677.0, 114.0, 1704.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"midpoints" : [ 1689.5, 33.0, 1689.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-194", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 219.5, 375.0, 270.0, 375.0, 270.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 204.5, 345.0, 255.0, 345.0, 255.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 189.5, 315.0, 240.0, 315.0, 240.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 174.5, 285.0, 225.0, 285.0, 225.0, 375.0, 234.099999999999994, 375.0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 159.5, 114.0, 129.0, 114.0, 129.0, 207.0, 45.0, 207.0, 45.0, 780.0, 9.5, 780.0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 444.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 429.5, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 414.5, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 399.5, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 9.5, 114.0, 9.5, 114.0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"midpoints" : [ 159.5, 75.0, 135.0, 75.0, 135.0, 195.0, 180.0, 195.0, 180.0, 285.0, 225.0, 285.0, 225.0, 375.0, 270.0, 375.0, 270.0, 384.0, 309.5, 384.0 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"midpoints" : [ 159.5, 75.0, 135.0, 75.0, 135.0, 195.0, 180.0, 195.0, 180.0, 285.0, 225.0, 285.0, 225.0, 354.0, 294.5, 354.0 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 159.5, 75.0, 135.0, 75.0, 135.0, 195.0, 180.0, 195.0, 180.0, 285.0, 225.0, 285.0, 225.0, 324.0, 279.5, 324.0 ],
									"order" : 2,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"midpoints" : [ 159.5, 75.0, 135.0, 75.0, 135.0, 195.0, 180.0, 195.0, 180.0, 285.0, 225.0, 285.0, 225.0, 294.0, 264.5, 294.0 ],
									"order" : 3,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 159.5, 75.0, 135.0, 75.0, 135.0, 195.0, 180.0, 195.0, 180.0, 264.0, 249.5, 264.0 ],
									"order" : 4,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"midpoints" : [ 159.5, 75.0, 135.0, 75.0, 135.0, 195.0, 180.0, 195.0, 180.0, 234.0, 234.5, 234.0 ],
									"order" : 5,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"midpoints" : [ 159.5, 75.0, 135.0, 75.0, 135.0, 195.0, 180.0, 195.0, 180.0, 204.0, 219.5, 204.0 ],
									"order" : 6,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"midpoints" : [ 159.5, 75.0, 135.0, 75.0, 135.0, 174.0, 204.5, 174.0 ],
									"order" : 7,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"midpoints" : [ 159.5, 75.0, 135.0, 75.0, 135.0, 144.0, 189.5, 144.0 ],
									"order" : 8,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"midpoints" : [ 159.5, 75.0, 147.0, 75.0, 147.0, 114.0, 174.5, 114.0 ],
									"order" : 9,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"midpoints" : [ 159.5, 33.0, 159.5, 33.0 ],
									"order" : 10,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 384.5, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 369.5, 375.0, 405.0, 375.0, 405.0, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 354.5, 345.0, 390.0, 345.0, 390.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 339.5, 315.0, 375.0, 315.0, 375.0, 375.0, 405.0, 375.0, 405.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 324.5, 285.0, 360.0, 285.0, 360.0, 345.0, 390.0, 345.0, 390.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 309.5, 267.0, 237.0, 267.0, 237.0, 804.0, 234.099999999999994, 804.0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 294.5, 237.0, 222.0, 237.0, 222.0, 375.0, 234.0, 375.0, 234.0, 780.0, 9.5, 780.0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 579.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 564.5, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 549.5, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 24.5, 780.0, 234.099999999999994, 780.0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 534.5, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 519.5, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 504.5, 375.0, 540.0, 375.0, 540.0, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 489.5, 345.0, 525.0, 345.0, 525.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 474.5, 315.0, 510.0, 315.0, 510.0, 375.0, 540.0, 375.0, 540.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 459.5, 285.0, 495.0, 285.0, 495.0, 345.0, 519.0, 345.0, 519.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 444.5, 144.0, 435.0, 144.0, 435.0, 255.0, 414.0, 255.0, 414.0, 267.0, 372.0, 267.0, 372.0, 375.0, 384.0, 375.0, 384.0, 795.0, 234.099999999999994, 795.0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 429.5, 255.0, 414.0, 255.0, 414.0, 267.0, 372.0, 267.0, 372.0, 375.0, 384.0, 375.0, 384.0, 780.0, 9.5, 780.0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 714.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 699.5, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 39.5, 780.0, 458.699999999999989, 780.0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 684.5, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 669.5, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 654.5, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 639.5, 375.0, 675.0, 375.0, 675.0, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 624.5, 345.0, 660.0, 345.0, 660.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 609.5, 315.0, 645.0, 315.0, 645.0, 375.0, 675.0, 375.0, 675.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 594.5, 297.0, 522.0, 297.0, 522.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 579.5, 267.0, 507.0, 267.0, 507.0, 375.0, 519.0, 375.0, 519.0, 795.0, 234.099999999999994, 795.0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 564.5, 114.0, 519.0, 114.0, 519.0, 75.0, 129.0, 75.0, 129.0, 207.0, 45.0, 207.0, 45.0, 780.0, 9.5, 780.0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 864.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 54.5, 780.0, 683.299999999999955, 780.0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 849.5, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 834.5, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 819.5, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 804.5, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 789.5, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 774.5, 375.0, 825.0, 375.0, 825.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 759.5, 345.0, 789.0, 345.0, 789.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 744.5, 315.0, 789.0, 315.0, 789.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 729.5, 297.0, 657.0, 297.0, 657.0, 795.0, 234.099999999999994, 795.0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 714.5, 267.0, 642.0, 267.0, 642.0, 375.0, 654.0, 375.0, 654.0, 780.0, 9.5, 780.0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 69.5, 780.0, 907.899999999999977, 780.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 999.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 984.5, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 969.5, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 954.5, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 939.5, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 924.5, 375.0, 960.0, 375.0, 960.0, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 909.5, 345.0, 939.0, 345.0, 939.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 894.5, 315.0, 930.0, 315.0, 930.0, 375.0, 939.0, 375.0, 939.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 879.5, 297.0, 795.0, 297.0, 795.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 864.5, 267.0, 792.0, 267.0, 792.0, 795.0, 234.099999999999994, 795.0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 84.5, 780.0, 1132.5, 780.0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 849.5, 237.0, 777.0, 237.0, 777.0, 375.0, 789.0, 375.0, 789.0, 780.0, 9.5, 780.0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 1134.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 1119.5, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 1104.5, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 1089.5, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 1074.5, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 1059.5, 375.0, 1095.0, 375.0, 1095.0, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 1044.5, 345.0, 1074.0, 345.0, 1074.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 1029.5, 315.0, 1065.0, 315.0, 1065.0, 375.0, 1074.0, 375.0, 1074.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"midpoints" : [ 1014.5, 297.0, 942.0, 297.0, 942.0, 795.0, 458.699999999999989, 795.0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 99.5, 780.0, 1357.099999999999909, 780.0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 999.5, 267.0, 927.0, 267.0, 927.0, 375.0, 939.0, 375.0, 939.0, 795.0, 234.099999999999994, 795.0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 984.5, 114.0, 939.0, 114.0, 939.0, 75.0, 129.0, 75.0, 129.0, 207.0, 45.0, 207.0, 45.0, 780.0, 9.5, 780.0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 10 ],
									"midpoints" : [ 1269.5, 795.0, 2255.5, 795.0 ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 9 ],
									"midpoints" : [ 1254.5, 795.0, 2030.900000000000091, 795.0 ],
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 8 ],
									"midpoints" : [ 1239.5, 795.0, 1806.299999999999955, 795.0 ],
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 7 ],
									"midpoints" : [ 1224.5, 795.0, 1581.700000000000045, 795.0 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 6 ],
									"midpoints" : [ 1209.5, 795.0, 1357.099999999999909, 795.0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 5 ],
									"midpoints" : [ 1194.5, 375.0, 1209.0, 375.0, 1209.0, 795.0, 1132.5, 795.0 ],
									"source" : [ "obj-97", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 4 ],
									"midpoints" : [ 1179.5, 345.0, 1209.0, 345.0, 1209.0, 795.0, 907.899999999999977, 795.0 ],
									"source" : [ "obj-98", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 3 ],
									"midpoints" : [ 1164.5, 315.0, 1200.0, 315.0, 1200.0, 375.0, 1209.0, 375.0, 1209.0, 795.0, 683.299999999999955, 795.0 ],
									"source" : [ "obj-99", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 31.0, 847.0, 1410.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 847.0, 1410.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p 714Decoder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-270",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1515.0, 831.0, 29.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1515.0, 831.0, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Stereo Quad 7.1.4 3OAAFormat",
					"disabled" : [ 0, 0, 0, 0 ],
					"id" : "obj-269",
					"itemtype" : 0,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1515.0, 757.0, 18.0, 66.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1515.0, 757.0, 18.0, 66.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "0", "1", "2", "3" ],
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "radiogroup[1]",
							"parameter_mmax" : 3,
							"parameter_shortname" : "radiogroup[1]",
							"parameter_type" : 2
						}

					}
,
					"size" : 4,
					"value" : 0,
					"varname" : "radiogroup[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-265",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 0.0, 757.0, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 757.0, 50.5, 22.0 ],
					"text" : "gate~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-263",
					"maxclass" : "newobj",
					"numinlets" : 16,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 1181.0, 84.0, 1078.0, 842.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-78",
									"index" : 16,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2085.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-79",
									"index" : 15,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1950.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-80",
									"index" : 14,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1815.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-81",
									"index" : 13,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1665.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-74",
									"index" : 12,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1530.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-75",
									"index" : 11,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1395.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-76",
									"index" : 10,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1260.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-77",
									"index" : 9,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1110.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-44",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 975.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-45",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 840.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-46",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 705.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-47",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 555.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-42",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 420.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-43",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 285.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 150.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2145.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.109455"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2085.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.046988"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2010.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.046988"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1950.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.109455"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1875.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.051651"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1815.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.031739"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1725.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.031739"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1665.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.051651"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1590.0, 705.0, 34.0, 22.0 ],
									"text" : "*~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1530.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.052066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1455.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.052066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1395.0, 525.0, 34.0, 22.0 ],
									"text" : "*~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1320.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.061259"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1260.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.028949"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1170.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.028949"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1110.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.061259"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1035.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.144496"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 975.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.144496"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 900.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.204814"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 840.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.032629"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 765.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.032629"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 705.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.204814"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 630.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.034953"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 570.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.034953"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 480.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.076385"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 420.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.076385"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 345.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.085231"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 285.0, 525.0, 67.0, 22.0 ],
									"text" : "*~ 0.03459"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 210.0, 705.0, 67.0, 22.0 ],
									"text" : "*~ 0.03459"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 150.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.085231"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 60.0, 705.0, 74.0, 22.0 ],
									"text" : "*~ 0.036296"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 0.0, 525.0, 74.0, 22.0 ],
									"text" : "*~ 0.036296"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 825.0, 2220.0, 22.0 ],
									"text" : "dac~ 1 2 29 30"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2145.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.051651"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2085.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.031739"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2010.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.031739"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1950.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.051651"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1875.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.109455"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1815.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.046988"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1725.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.046988"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1665.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.109455"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1590.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.061259"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1455.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.028949"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1320.0, 345.0, 34.0, 22.0 ],
									"text" : "*~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1170.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.052066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1035.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.034953"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 900.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.204814"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 765.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.032629"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 630.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.144496"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 480.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.036296"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 345.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.085231"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 210.0, 345.0, 67.0, 22.0 ],
									"text" : "*~ 0.03459"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 60.0, 345.0, 74.0, 22.0 ],
									"text" : "*~ 0.076385"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 420.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.036296"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 285.0, 165.0, 67.0, 22.0 ],
									"text" : "*~ 0.03459"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 150.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.085231"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 0.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.076385"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1530.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.028949"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1395.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.061259"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1260.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.052066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1110.0, 165.0, 34.0, 22.0 ],
									"text" : "*~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 975.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.034953"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 840.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.032629"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 705.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.204814"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 555.0, 165.0, 74.0, 22.0 ],
									"text" : "*~ 0.144496"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"order" : 2,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"order" : 3,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 984.5, 510.0, 84.0, 510.0, 84.0, 690.0, 9.5, 690.0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1119.5, 510.0, 84.0, 510.0, 84.0, 690.0, 9.5, 690.0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1269.5, 505.5, 9.5, 505.5 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 489.5, 510.0, 690.0, 510.0, 690.0, 690.0, 743.166666666666629, 690.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 639.5, 510.0, 690.0, 510.0, 690.0, 690.0, 743.166666666666629, 690.0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 774.5, 510.0, 789.0, 510.0, 789.0, 690.0, 743.166666666666629, 690.0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 909.5, 510.0, 789.0, 510.0, 789.0, 690.0, 743.166666666666629, 690.0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1044.5, 510.0, 789.0, 510.0, 789.0, 690.0, 743.166666666666629, 690.0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1179.5, 510.0, 789.0, 510.0, 789.0, 690.0, 743.166666666666629, 690.0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1329.5, 510.0, 789.0, 510.0, 789.0, 690.0, 743.166666666666629, 690.0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 69.5, 510.0, 690.0, 510.0, 690.0, 690.0, 743.166666666666629, 690.0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1464.5, 690.0, 743.166666666666629, 690.0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 9.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 69.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 219.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 159.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1599.5, 510.0, 1440.0, 510.0, 1440.0, 810.0, 743.166666666666629, 810.0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1734.5, 510.0, 1440.0, 510.0, 1440.0, 810.0, 743.166666666666629, 810.0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1404.5, 505.5, 9.5, 505.5 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1539.5, 505.5, 9.5, 505.5 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 9.5, 510.0, 84.0, 510.0, 84.0, 690.0, 9.5, 690.0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"order" : 2,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"order" : 3,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 159.5, 510.0, 84.0, 510.0, 84.0, 690.0, 9.5, 690.0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 294.5, 510.0, 84.0, 510.0, 84.0, 690.0, 9.5, 690.0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 429.5, 510.0, 84.0, 510.0, 84.0, 690.0, 9.5, 690.0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1674.5, 505.5, 9.5, 505.5 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1884.5, 510.0, 1440.0, 510.0, 1440.0, 810.0, 743.166666666666629, 810.0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1824.5, 505.5, 9.5, 505.5 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 2019.5, 510.0, 1440.0, 510.0, 1440.0, 810.0, 743.166666666666629, 810.0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1959.5, 505.5, 9.5, 505.5 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 354.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 294.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 489.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 429.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"order" : 3,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"order" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"order" : 2,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"order" : 3,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"order" : 0,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 2,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 1,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 3,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"order" : 1,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"order" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"order" : 2,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 1,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"order" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"order" : 2,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 3,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"order" : 1,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"order" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"order" : 2,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 3,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 1,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"order" : 0,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"order" : 2,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 3,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 639.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 579.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 564.5, 510.0, 84.0, 510.0, 84.0, 690.0, 9.5, 690.0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 2154.5, 510.0, 1440.0, 510.0, 1440.0, 810.0, 743.166666666666629, 810.0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 2094.5, 505.5, 9.5, 505.5 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 774.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 714.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 909.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 849.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 1044.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 984.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 1179.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 1119.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 219.5, 510.0, 690.0, 510.0, 690.0, 690.0, 743.166666666666629, 690.0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 1329.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 1269.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 1464.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 1404.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 1599.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 1539.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 1734.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 1674.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 1884.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 1824.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 354.5, 510.0, 690.0, 510.0, 690.0, 690.0, 743.166666666666629, 690.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 2019.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 1959.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 3 ],
									"midpoints" : [ 2154.5, 810.0, 2210.5, 810.0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 2094.5, 810.0, 1476.833333333333258, 810.0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"order" : 1,
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"order" : 3,
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"order" : 0,
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"order" : 2,
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"order" : 1,
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"order" : 3,
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"order" : 0,
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"order" : 2,
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"order" : 3,
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 1,
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"midpoints" : [ 1324.0, 699.0 ],
									"order" : 0,
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"order" : 2,
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 3,
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"order" : 1,
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"order" : 0,
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"order" : 2,
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"order" : 1,
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"order" : 3,
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"order" : 0,
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"order" : 2,
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"order" : 1,
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"order" : 3,
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"order" : 0,
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"order" : 2,
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 714.5, 510.0, 84.0, 510.0, 84.0, 690.0, 9.5, 690.0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"order" : 1,
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"order" : 3,
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"order" : 0,
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"order" : 2,
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"order" : 1,
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"order" : 3,
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"order" : 0,
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"order" : 2,
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 849.5, 510.0, 84.0, 510.0, 84.0, 690.0, 9.5, 690.0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 15.0, 817.0, 1410.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 817.0, 1410.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p quadDecoder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-261",
					"maxclass" : "newobj",
					"numinlets" : 17,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 84.0, 1078.0, 842.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 2,
						"objectsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-55",
									"index" : 16,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2085.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-54",
									"index" : 15,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1950.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-53",
									"index" : 14,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1815.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-49",
									"index" : 13,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1665.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-48",
									"index" : 12,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1530.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-47",
									"index" : 11,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1395.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-46",
									"index" : 10,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1260.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-45",
									"index" : 9,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1110.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-44",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 975.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-43",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 840.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-40",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 705.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-24",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 555.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-23",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 420.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-22",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 285.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-21",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 150.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-233",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 360.0, 495.0, 88.0, 22.0 ],
									"text" : "svf~ 10000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-232",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1410.0, 255.0, 110.0, 22.0 ],
									"text" : "onepole~ 9000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-231",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1410.0, 285.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-230",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1470.0, 645.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-229",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1470.0, 615.0, 110.0, 22.0 ],
									"text" : "onepole~ 9000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-228",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1605.0, 495.0, 110.0, 22.0 ],
									"text" : "onepole~ 9000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-227",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1545.0, 375.0, 110.0, 22.0 ],
									"text" : "onepole~ 4500. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-226",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2025.0, 615.0, 110.0, 22.0 ],
									"text" : "onepole~ 9000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-225",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1965.0, 255.0, 110.0, 22.0 ],
									"text" : "onepole~ 9000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-224",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2160.0, 495.0, 110.0, 22.0 ],
									"text" : "onepole~ 9000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-223",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1965.0, 285.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-222",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 2025.0, 645.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-221",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1605.0, 555.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-220",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1545.0, 435.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-218",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 2160.0, 555.0, 81.0, 22.0 ],
									"text" : "svf~ 7000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-219",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 2160.0, 525.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-217",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 2100.0, 435.0, 81.0, 22.0 ],
									"text" : "svf~ 7000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-216",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2100.0, 375.0, 110.0, 22.0 ],
									"text" : "onepole~ 9000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-215",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 990.0, 255.0, 116.0, 22.0 ],
									"text" : "onepole~ 14000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-214",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1050.0, 495.0, 116.0, 22.0 ],
									"text" : "onepole~ 14000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-213",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 495.0, 495.0, 116.0, 22.0 ],
									"text" : "onepole~ 14000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-212",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 435.0, 255.0, 116.0, 22.0 ],
									"text" : "onepole~ 14000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-211",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1050.0, 525.0, 81.0, 22.0 ],
									"text" : "svf~ 7000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-209",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 990.0, 285.0, 81.0, 22.0 ],
									"text" : "svf~ 7000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-206",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 495.0, 525.0, 81.0, 22.0 ],
									"text" : "svf~ 7000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-205",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 435.0, 285.0, 81.0, 22.0 ],
									"text" : "svf~ 7000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-201",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1605.0, 525.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-200",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1545.0, 405.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-199",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1470.0, 675.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-198",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1410.0, 315.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-197",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1335.0, 495.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-196",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1275.0, 375.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-195",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1185.0, 615.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-194",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1125.0, 255.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-192",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1050.0, 555.0, 81.0, 22.0 ],
									"text" : "svf~ 8000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-193",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 990.0, 315.0, 81.0, 22.0 ],
									"text" : "svf~ 8000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-191",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 915.0, 495.0, 81.0, 22.0 ],
									"text" : "svf~ 8000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-190",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 855.0, 375.0, 81.0, 22.0 ],
									"text" : "svf~ 8000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-188",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 780.0, 615.0, 81.0, 22.0 ],
									"text" : "svf~ 8000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-189",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 720.0, 255.0, 81.0, 22.0 ],
									"text" : "svf~ 8000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-185",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 645.0, 495.0, 81.0, 22.0 ],
									"text" : "svf~ 8000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-184",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 570.0, 255.0, 81.0, 22.0 ],
									"text" : "svf~ 8000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-183",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 495.0, 555.0, 88.0, 22.0 ],
									"text" : "svf~ 10000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-182",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 435.0, 315.0, 88.0, 22.0 ],
									"text" : "svf~ 10000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-181",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 300.0, 375.0, 88.0, 22.0 ],
									"text" : "svf~ 10000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-180",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 240.0, 615.0, 88.0, 22.0 ],
									"text" : "svf~ 10000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-179",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 165.0, 255.0, 88.0, 22.0 ],
									"text" : "svf~ 10000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-178",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1680.0, 255.0, 81.0, 22.0 ],
									"text" : "svf~ 7000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-177",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1740.0, 615.0, 81.0, 22.0 ],
									"text" : "svf~ 7000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-176",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1830.0, 375.0, 81.0, 22.0 ],
									"text" : "svf~ 7000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-175",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1890.0, 495.0, 81.0, 22.0 ],
									"text" : "svf~ 7000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-174",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 1965.0, 315.0, 81.0, 22.0 ],
									"text" : "svf~ 7000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-172",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 2100.0, 405.0, 81.0, 22.0 ],
									"text" : "svf~ 7500 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-170",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 2025.0, 675.0, 81.0, 22.0 ],
									"text" : "svf~ 7000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-169",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 75.0, 495.0, 88.0, 22.0 ],
									"text" : "svf~ 10000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-168",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 15.0, 255.0, 88.0, 22.0 ],
									"text" : "svf~ 10000 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-164",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2100.0, 345.0, 115.0, 22.0 ],
									"text" : "onepole~ 11500. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2025.0, 585.0, 115.0, 22.0 ],
									"text" : "onepole~ 11500. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-162",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1830.0, 345.0, 115.0, 22.0 ],
									"text" : "onepole~ 11500. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-161",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1740.0, 585.0, 115.0, 22.0 ],
									"text" : "onepole~ 11500. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-160",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1545.0, 345.0, 110.0, 22.0 ],
									"text" : "onepole~ 5750. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-159",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1470.0, 585.0, 115.0, 22.0 ],
									"text" : "onepole~ 11500. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-158",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1275.0, 345.0, 115.0, 22.0 ],
									"text" : "onepole~ 11500. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-157",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1185.0, 585.0, 115.0, 22.0 ],
									"text" : "onepole~ 11500. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-156",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 855.0, 345.0, 110.0, 22.0 ],
									"text" : "onepole~ 6000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-155",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 780.0, 585.0, 110.0, 22.0 ],
									"text" : "onepole~ 6000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-154",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 300.0, 345.0, 110.0, 22.0 ],
									"text" : "onepole~ 6000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-153",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 240.0, 585.0, 110.0, 22.0 ],
									"text" : "onepole~ 6000. Hz"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-151",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2130.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-152",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2070.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-149",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1995.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-150",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1935.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-147",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1860.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-148",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1800.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-145",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1710.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-146",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1650.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-143",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1575.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-144",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1515.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-141",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1440.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1380.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-139",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1305.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-140",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1245.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1155.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-138",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1095.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-135",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1020.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-136",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 960.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-133",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 885.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-134",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 825.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 750.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 690.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-129",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 615.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-130",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 540.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-127",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 465.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 405.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-125",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 330.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-126",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 270.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-123",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 195.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 135.0, 705.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-122",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 765.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-121",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 0.0, 735.0, 68.0, 22.0 ],
									"text" : "selector~ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-116",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2100.0, 315.0, 61.0, 22.0 ],
									"text" : "delay~ 24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2025.0, 555.0, 61.0, 22.0 ],
									"text" : "delay~ 24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1830.0, 315.0, 61.0, 22.0 ],
									"text" : "delay~ 24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1740.0, 555.0, 61.0, 22.0 ],
									"text" : "delay~ 24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1545.0, 315.0, 61.0, 22.0 ],
									"text" : "delay~ 24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1470.0, 555.0, 61.0, 22.0 ],
									"text" : "delay~ 24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1274.0, 315.0, 61.0, 22.0 ],
									"text" : "delay~ 24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1184.0, 555.0, 61.0, 22.0 ],
									"text" : "delay~ 24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 300.0, 315.0, 71.0, 22.0 ],
									"text" : "delay~ 33.6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 240.0, 555.0, 71.0, 22.0 ],
									"text" : "delay~ 33.6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 855.0, 315.0, 71.0, 22.0 ],
									"text" : "delay~ 33.6"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-52",
									"index" : 17,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 2220.0, 0.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2145.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.051651"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2085.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.031739"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 780.0, 555.0, 71.0, 22.0 ],
									"text" : "delay~ 33.6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 2010.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.031739"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1950.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.051651"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1875.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.109455"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1815.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.046988"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1725.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.046988"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1665.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.109455"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1590.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.061259"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1455.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.028949"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1320.0, 150.0, 34.0, 22.0 ],
									"text" : "*~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1170.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.052066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1035.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.034953"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 900.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.204814"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 765.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.032629"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 630.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.144496"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 480.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.036296"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 345.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.085231"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 210.0, 150.0, 67.0, 22.0 ],
									"text" : "*~ 0.03459"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 60.0, 150.0, 74.0, 22.0 ],
									"text" : "*~ 0.076385"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 420.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.036296"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 285.0, 105.0, 67.0, 22.0 ],
									"text" : "*~ 0.03459"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 150.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.085231"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 0.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.076385"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1530.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.028949"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1395.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.061259"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1260.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.052066"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1110.0, 105.0, 34.0, 22.0 ],
									"text" : "*~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 975.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.034953"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 840.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.032629"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 705.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.204814"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 555.0, 105.0, 74.0, 22.0 ],
									"text" : "*~ 0.144496"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 825.0, 2175.0, 22.0 ],
									"text" : "dac~ 1 2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 9.5, 90.0, 84.0, 90.0, 84.0, 144.0, 69.5, 144.0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 9.5, 33.0, 9.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 1 ],
									"midpoints" : [ 984.5, 240.0, 975.0, 240.0, 975.0, 480.0, 996.0, 480.0, 996.0, 699.0, 994.0, 699.0 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-215", 0 ],
									"midpoints" : [ 984.5, 240.0, 999.5, 240.0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 0 ],
									"midpoints" : [ 1193.5, 579.0, 1194.5, 579.0 ],
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-160", 0 ],
									"midpoints" : [ 1554.5, 339.0, 1554.5, 339.0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-159", 0 ],
									"midpoints" : [ 1479.5, 579.0, 1479.5, 579.0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 1 ],
									"midpoints" : [ 1119.5, 480.0, 1176.0, 480.0, 1176.0, 540.0, 1131.0, 540.0, 1131.0, 699.0, 1129.0, 699.0 ],
									"order" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-194", 0 ],
									"midpoints" : [ 1119.5, 240.0, 1134.5, 240.0 ],
									"order" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-162", 0 ],
									"midpoints" : [ 1839.5, 339.0, 1839.5, 339.0 ],
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-161", 0 ],
									"midpoints" : [ 1749.5, 579.0, 1749.5, 579.0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-164", 0 ],
									"midpoints" : [ 2109.5, 339.0, 2109.5, 339.0 ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-163", 0 ],
									"midpoints" : [ 2034.5, 579.0, 2034.5, 579.0 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-140", 1 ],
									"midpoints" : [ 1269.5, 300.0, 1260.0, 300.0, 1260.0, 570.0, 1311.0, 570.0, 1311.0, 690.0, 1279.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"midpoints" : [ 1269.5, 300.0, 1283.5, 300.0 ],
									"order" : 1,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 9.5, 759.0, 9.5, 759.0 ],
									"source" : [ "obj-121", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 54.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-122", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 204.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-123", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 144.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 339.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-125", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 279.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 474.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-127", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 414.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 624.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 1 ],
									"midpoints" : [ 489.5, 240.0, 420.0, 240.0, 420.0, 480.0, 480.0, 480.0, 480.0, 690.0, 499.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-213", 0 ],
									"midpoints" : [ 489.5, 240.0, 420.0, 240.0, 420.0, 480.0, 504.5, 480.0 ],
									"order" : 1,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 549.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 759.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 699.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-132", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 894.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-133", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 834.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1029.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-135", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 969.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1164.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1104.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-138", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1314.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-139", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 1 ],
									"midpoints" : [ 639.5, 240.0, 651.0, 240.0, 651.0, 480.0, 630.0, 480.0, 630.0, 750.0, 649.0, 750.0 ],
									"order" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-185", 0 ],
									"midpoints" : [ 639.5, 240.0, 654.5, 240.0 ],
									"order" : 1,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1254.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-140", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1449.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-141", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1389.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1584.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1524.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-144", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1719.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-145", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1659.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 1869.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-147", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1809.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-148", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 2004.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 1 ],
									"midpoints" : [ 774.5, 240.0, 801.0, 240.0, 801.0, 540.0, 765.0, 540.0, 765.0, 690.0, 784.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"midpoints" : [ 774.5, 240.0, 801.0, 240.0, 801.0, 540.0, 789.5, 540.0 ],
									"order" : 1,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 1944.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"midpoints" : [ 2139.5, 810.0, 2165.5, 810.0 ],
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 2079.5, 810.0, 9.5, 810.0 ],
									"source" : [ "obj-152", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-180", 0 ],
									"midpoints" : [ 249.5, 609.0, 249.5, 609.0 ],
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-181", 0 ],
									"midpoints" : [ 309.5, 369.0, 309.5, 369.0 ],
									"source" : [ "obj-154", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-188", 0 ],
									"midpoints" : [ 789.5, 609.0, 789.5, 609.0 ],
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-190", 0 ],
									"midpoints" : [ 864.5, 369.0, 864.5, 369.0 ],
									"source" : [ "obj-156", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-195", 0 ],
									"midpoints" : [ 1194.5, 609.0, 1194.5, 609.0 ],
									"source" : [ "obj-157", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-196", 0 ],
									"midpoints" : [ 1284.5, 369.0, 1284.5, 369.0 ],
									"source" : [ "obj-158", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-229", 0 ],
									"midpoints" : [ 1479.5, 609.0, 1479.5, 609.0 ],
									"source" : [ "obj-159", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 1 ],
									"midpoints" : [ 909.5, 300.0, 840.0, 300.0, 840.0, 540.0, 919.0, 540.0 ],
									"order" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-191", 0 ],
									"midpoints" : [ 909.5, 300.0, 975.0, 300.0, 975.0, 480.0, 924.5, 480.0 ],
									"order" : 1,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-227", 0 ],
									"midpoints" : [ 1554.5, 369.0, 1554.5, 369.0 ],
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-177", 0 ],
									"midpoints" : [ 1749.5, 609.0, 1749.5, 609.0 ],
									"source" : [ "obj-161", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-176", 0 ],
									"midpoints" : [ 1839.5, 369.0, 1839.5, 369.0 ],
									"source" : [ "obj-162", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-226", 0 ],
									"midpoints" : [ 2034.5, 609.0, 2034.5, 609.0 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-216", 0 ],
									"midpoints" : [ 2109.5, 369.0, 2109.5, 369.0 ],
									"source" : [ "obj-164", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 2 ],
									"midpoints" : [ 93.5, 480.0, 58.5, 480.0 ],
									"source" : [ "obj-168", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-122", 2 ],
									"midpoints" : [ 153.5, 690.0, 103.5, 690.0 ],
									"source" : [ "obj-169", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 1 ],
									"midpoints" : [ 1044.5, 240.0, 975.0, 240.0, 975.0, 480.0, 1035.0, 480.0, 1035.0, 690.0, 1054.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-214", 0 ],
									"midpoints" : [ 1044.5, 240.0, 975.0, 240.0, 975.0, 480.0, 1059.5, 480.0 ],
									"order" : 1,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 2 ],
									"midpoints" : [ 2096.5, 699.0, 2055.0, 699.0, 2055.0, 759.0, 2053.5, 759.0 ],
									"source" : [ "obj-170", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-217", 0 ],
									"midpoints" : [ 2171.5, 429.0, 2109.5, 429.0 ],
									"source" : [ "obj-172", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 2 ],
									"midpoints" : [ 2036.5, 540.0, 1993.5, 540.0 ],
									"source" : [ "obj-174", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 2 ],
									"midpoints" : [ 1961.5, 690.0, 1918.5, 690.0 ],
									"source" : [ "obj-175", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 2 ],
									"midpoints" : [ 1901.5, 480.0, 1866.0, 480.0, 1866.0, 690.0, 1858.5, 690.0 ],
									"source" : [ "obj-176", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-145", 2 ],
									"midpoints" : [ 1811.5, 690.0, 1768.5, 690.0 ],
									"source" : [ "obj-177", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 2 ],
									"midpoints" : [ 1751.5, 540.0, 1708.5, 540.0 ],
									"source" : [ "obj-178", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 2 ],
									"midpoints" : [ 243.5, 540.0, 193.5, 540.0 ],
									"source" : [ "obj-179", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"midpoints" : [ 1179.5, 240.0, 1206.0, 240.0, 1206.0, 540.0, 1193.5, 540.0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 1 ],
									"midpoints" : [ 1179.5, 240.0, 1206.0, 240.0, 1206.0, 540.0, 1170.0, 540.0, 1170.0, 690.0, 1189.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-123", 2 ],
									"midpoints" : [ 318.5, 690.0, 253.5, 690.0 ],
									"source" : [ "obj-180", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 2 ],
									"midpoints" : [ 378.5, 480.0, 345.0, 480.0, 345.0, 570.0, 360.0, 570.0, 360.0, 690.0, 328.5, 690.0 ],
									"source" : [ "obj-181", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 2 ],
									"midpoints" : [ 513.5, 480.0, 463.5, 480.0 ],
									"source" : [ "obj-182", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 2 ],
									"midpoints" : [ 573.5, 690.0, 523.5, 690.0 ],
									"source" : [ "obj-183", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 2 ],
									"midpoints" : [ 641.5, 690.0, 598.5, 690.0 ],
									"source" : [ "obj-184", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 2 ],
									"midpoints" : [ 716.5, 690.0, 673.5, 690.0 ],
									"source" : [ "obj-185", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 2 ],
									"midpoints" : [ 851.5, 690.0, 808.5, 690.0 ],
									"source" : [ "obj-188", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 2 ],
									"midpoints" : [ 791.5, 540.0, 748.5, 540.0 ],
									"source" : [ "obj-189", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-139", 1 ],
									"midpoints" : [ 1329.5, 300.0, 1260.0, 300.0, 1260.0, 570.0, 1339.0, 570.0 ],
									"order" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-197", 0 ],
									"midpoints" : [ 1329.5, 300.0, 1260.0, 300.0, 1260.0, 480.0, 1344.5, 480.0 ],
									"order" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 2 ],
									"midpoints" : [ 926.5, 480.0, 900.0, 480.0, 900.0, 690.0, 883.5, 690.0 ],
									"source" : [ "obj-190", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 2 ],
									"midpoints" : [ 986.5, 690.0, 943.5, 690.0 ],
									"source" : [ "obj-191", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 2 ],
									"midpoints" : [ 1121.5, 690.0, 1078.5, 690.0 ],
									"source" : [ "obj-192", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 2 ],
									"midpoints" : [ 1061.5, 480.0, 1018.5, 480.0 ],
									"source" : [ "obj-193", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 2 ],
									"midpoints" : [ 1196.5, 540.0, 1153.5, 540.0 ],
									"source" : [ "obj-194", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 2 ],
									"midpoints" : [ 1256.5, 690.0, 1213.5, 690.0 ],
									"source" : [ "obj-195", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-140", 2 ],
									"midpoints" : [ 1346.5, 480.0, 1311.0, 480.0, 1311.0, 690.0, 1303.5, 690.0 ],
									"source" : [ "obj-196", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-139", 2 ],
									"midpoints" : [ 1406.5, 690.0, 1363.5, 690.0 ],
									"source" : [ "obj-197", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 2 ],
									"midpoints" : [ 1481.5, 540.0, 1438.5, 540.0 ],
									"source" : [ "obj-198", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 2 ],
									"midpoints" : [ 1541.5, 699.0, 1500.0, 699.0, 1500.0, 759.0, 1498.5, 759.0 ],
									"source" : [ "obj-199", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-122", 1 ],
									"midpoints" : [ 69.5, 240.0, 105.0, 240.0, 105.0, 480.0, 60.0, 480.0, 60.0, 720.0, 79.0, 720.0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-169", 0 ],
									"midpoints" : [ 69.5, 240.0, 105.0, 240.0, 105.0, 480.0, 84.5, 480.0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"midpoints" : [ 1464.5, 240.0, 1530.0, 240.0, 1530.0, 540.0, 1479.5, 540.0 ],
									"order" : 1,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 1 ],
									"midpoints" : [ 1464.5, 240.0, 1530.0, 240.0, 1530.0, 540.0, 1455.0, 540.0, 1455.0, 708.0, 1474.0, 708.0 ],
									"order" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-220", 0 ],
									"midpoints" : [ 1616.5, 429.0, 1554.5, 429.0 ],
									"source" : [ "obj-200", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-221", 0 ],
									"midpoints" : [ 1676.5, 549.0, 1614.5, 549.0 ],
									"source" : [ "obj-201", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-182", 0 ],
									"midpoints" : [ 506.5, 309.0, 444.5, 309.0 ],
									"source" : [ "obj-205", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-183", 0 ],
									"midpoints" : [ 566.5, 549.0, 504.5, 549.0 ],
									"source" : [ "obj-206", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-193", 0 ],
									"midpoints" : [ 1061.5, 309.0, 999.5, 309.0 ],
									"source" : [ "obj-209", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"midpoints" : [ 159.5, 33.0, 159.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"midpoints" : [ 159.5, 90.0, 234.0, 90.0, 234.0, 144.0, 219.5, 144.0 ],
									"order" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-192", 0 ],
									"midpoints" : [ 1121.5, 549.0, 1059.5, 549.0 ],
									"source" : [ "obj-211", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-205", 0 ],
									"midpoints" : [ 444.5, 279.0, 444.5, 279.0 ],
									"source" : [ "obj-212", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-206", 0 ],
									"midpoints" : [ 504.5, 519.0, 504.5, 519.0 ],
									"source" : [ "obj-213", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-211", 0 ],
									"midpoints" : [ 1059.5, 519.0, 1059.5, 519.0 ],
									"source" : [ "obj-214", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-209", 0 ],
									"midpoints" : [ 999.5, 279.0, 999.5, 279.0 ],
									"source" : [ "obj-215", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-172", 0 ],
									"midpoints" : [ 2109.5, 399.0, 2109.5, 399.0 ],
									"source" : [ "obj-216", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-152", 2 ],
									"midpoints" : [ 2171.5, 480.0, 2145.0, 480.0, 2145.0, 690.0, 2128.5, 690.0 ],
									"source" : [ "obj-217", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 2 ],
									"midpoints" : [ 2231.5, 750.0, 2188.5, 750.0 ],
									"source" : [ "obj-218", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-218", 0 ],
									"midpoints" : [ 2231.5, 549.0, 2169.5, 549.0 ],
									"source" : [ "obj-219", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"midpoints" : [ 294.5, 33.0, 294.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 294.5, 90.0, 363.0, 90.0, 363.0, 144.0, 354.5, 144.0 ],
									"order" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-144", 2 ],
									"midpoints" : [ 1616.5, 480.0, 1590.0, 480.0, 1590.0, 690.0, 1573.5, 690.0 ],
									"source" : [ "obj-220", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 2 ],
									"midpoints" : [ 1676.5, 690.0, 1633.5, 690.0 ],
									"source" : [ "obj-221", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-170", 0 ],
									"midpoints" : [ 2096.5, 669.0, 2034.5, 669.0 ],
									"source" : [ "obj-222", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-174", 0 ],
									"midpoints" : [ 2036.5, 309.0, 1974.5, 309.0 ],
									"source" : [ "obj-223", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-219", 0 ],
									"midpoints" : [ 2169.5, 519.0, 2169.5, 519.0 ],
									"source" : [ "obj-224", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-223", 0 ],
									"midpoints" : [ 1974.5, 279.0, 1974.5, 279.0 ],
									"source" : [ "obj-225", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-222", 0 ],
									"midpoints" : [ 2034.5, 639.0, 2034.5, 639.0 ],
									"source" : [ "obj-226", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-200", 0 ],
									"midpoints" : [ 1554.5, 399.0, 1554.5, 399.0 ],
									"source" : [ "obj-227", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-201", 0 ],
									"midpoints" : [ 1614.5, 519.0, 1614.5, 519.0 ],
									"source" : [ "obj-228", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-230", 0 ],
									"midpoints" : [ 1479.5, 639.0, 1479.5, 639.0 ],
									"source" : [ "obj-229", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"midpoints" : [ 429.5, 90.0, 504.0, 90.0, 504.0, 144.0, 489.5, 144.0 ],
									"order" : 0,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"midpoints" : [ 429.5, 33.0, 429.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-199", 0 ],
									"midpoints" : [ 1541.5, 669.0, 1479.5, 669.0 ],
									"source" : [ "obj-230", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-198", 0 ],
									"midpoints" : [ 1481.5, 309.0, 1419.5, 309.0 ],
									"source" : [ "obj-231", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-231", 0 ],
									"midpoints" : [ 1419.5, 279.0, 1419.5, 279.0 ],
									"source" : [ "obj-232", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 2 ],
									"midpoints" : [ 438.5, 690.0, 388.5, 690.0 ],
									"source" : [ "obj-233", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"midpoints" : [ 564.5, 90.0, 639.5, 90.0 ],
									"order" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"midpoints" : [ 564.5, 33.0, 564.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 1 ],
									"midpoints" : [ 1599.5, 300.0, 1530.0, 300.0, 1530.0, 540.0, 1590.0, 540.0, 1590.0, 588.0, 1609.0, 588.0 ],
									"order" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-228", 0 ],
									"midpoints" : [ 1599.5, 300.0, 1665.0, 300.0, 1665.0, 480.0, 1614.5, 480.0 ],
									"order" : 1,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"midpoints" : [ 1734.5, 240.0, 1761.0, 240.0, 1761.0, 540.0, 1749.5, 540.0 ],
									"order" : 1,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-145", 1 ],
									"midpoints" : [ 1734.5, 240.0, 1761.0, 240.0, 1761.0, 540.0, 1725.0, 540.0, 1725.0, 690.0, 1744.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 1 ],
									"midpoints" : [ 1404.5, 240.0, 1395.0, 240.0, 1395.0, 348.0, 1416.0, 348.0, 1416.0, 699.0, 1414.0, 699.0 ],
									"order" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-232", 0 ],
									"midpoints" : [ 1404.5, 240.0, 1419.5, 240.0 ],
									"order" : 1,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"midpoints" : [ 1539.5, 300.0, 1554.5, 300.0 ],
									"order" : 1,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-144", 1 ],
									"midpoints" : [ 1539.5, 300.0, 1530.0, 300.0, 1530.0, 540.0, 1590.0, 540.0, 1590.0, 690.0, 1549.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 1 ],
									"midpoints" : [ 9.5, 240.0, 0.0, 240.0, 0.0, 720.0, 34.0, 720.0 ],
									"order" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-168", 0 ],
									"midpoints" : [ 9.5, 240.0, 24.5, 240.0 ],
									"order" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 1 ],
									"midpoints" : [ 159.5, 240.0, 150.0, 240.0, 150.0, 480.0, 169.0, 480.0 ],
									"order" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-179", 0 ],
									"midpoints" : [ 159.5, 240.0, 174.5, 240.0 ],
									"order" : 1,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 1 ],
									"midpoints" : [ 294.5, 300.0, 225.0, 300.0, 225.0, 690.0, 304.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"midpoints" : [ 294.5, 300.0, 309.5, 300.0 ],
									"order" : 1,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 1 ],
									"midpoints" : [ 429.5, 240.0, 420.0, 240.0, 420.0, 480.0, 450.0, 480.0, 450.0, 690.0, 439.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-212", 0 ],
									"midpoints" : [ 429.5, 240.0, 444.5, 240.0 ],
									"order" : 1,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 1 ],
									"midpoints" : [ 1674.5, 240.0, 1665.0, 240.0, 1665.0, 480.0, 1725.0, 480.0, 1725.0, 690.0, 1684.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-178", 0 ],
									"midpoints" : [ 1674.5, 240.0, 1689.5, 240.0 ],
									"order" : 1,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 1 ],
									"midpoints" : [ 1884.5, 300.0, 1815.0, 300.0, 1815.0, 570.0, 1894.0, 570.0 ],
									"order" : 0,
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-175", 0 ],
									"midpoints" : [ 1884.5, 300.0, 1815.0, 300.0, 1815.0, 480.0, 1899.5, 480.0 ],
									"order" : 1,
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"midpoints" : [ 1824.5, 300.0, 1839.5, 300.0 ],
									"order" : 1,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 1 ],
									"midpoints" : [ 1824.5, 300.0, 1815.0, 300.0, 1815.0, 570.0, 1866.0, 570.0, 1866.0, 690.0, 1834.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"midpoints" : [ 2019.5, 240.0, 2085.0, 240.0, 2085.0, 540.0, 2034.5, 540.0 ],
									"order" : 1,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 1 ],
									"midpoints" : [ 2019.5, 240.0, 2085.0, 240.0, 2085.0, 540.0, 2010.0, 540.0, 2010.0, 708.0, 2029.0, 708.0 ],
									"order" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 1 ],
									"midpoints" : [ 1959.5, 240.0, 1950.0, 240.0, 1950.0, 348.0, 1971.0, 348.0, 1971.0, 699.0, 1969.0, 699.0 ],
									"order" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-225", 0 ],
									"midpoints" : [ 1959.5, 240.0, 1974.5, 240.0 ],
									"order" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 0 ],
									"midpoints" : [ 789.5, 579.0, 789.5, 579.0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"midpoints" : [ 714.5, 90.0, 789.0, 90.0, 789.0, 144.0, 774.5, 144.0 ],
									"order" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"midpoints" : [ 714.5, 33.0, 714.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 849.5, 90.0, 924.0, 90.0, 924.0, 144.0, 909.5, 144.0 ],
									"order" : 0,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"midpoints" : [ 849.5, 33.0, 849.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"midpoints" : [ 984.5, 33.0, 984.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"midpoints" : [ 984.5, 90.0, 1059.0, 90.0, 1059.0, 144.0, 1044.5, 144.0 ],
									"order" : 0,
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"midpoints" : [ 1119.5, 33.0, 1119.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 1119.5, 90.0, 1179.5, 90.0 ],
									"order" : 0,
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"midpoints" : [ 1269.5, 33.0, 1269.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 1 ],
									"midpoints" : [ 1269.5, 90.0, 1344.5, 90.0 ],
									"order" : 0,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"midpoints" : [ 1404.5, 90.0, 1479.0, 90.0, 1479.0, 144.0, 1464.5, 144.0 ],
									"order" : 0,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"midpoints" : [ 1404.5, 33.0, 1404.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"midpoints" : [ 1539.5, 90.0, 1614.0, 90.0, 1614.0, 144.0, 1599.5, 144.0 ],
									"order" : 0,
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"midpoints" : [ 1539.5, 33.0, 1539.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 1674.5, 90.0, 1749.0, 90.0, 1749.0, 144.0, 1734.5, 144.0 ],
									"order" : 0,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"midpoints" : [ 1674.5, 33.0, 1674.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 1 ],
									"midpoints" : [ 564.5, 480.0, 621.0, 480.0, 621.0, 690.0, 574.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-184", 0 ],
									"midpoints" : [ 564.5, 240.0, 579.5, 240.0 ],
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 1 ],
									"midpoints" : [ 2154.5, 300.0, 2085.0, 300.0, 2085.0, 540.0, 2145.0, 540.0, 2145.0, 588.0, 2164.0, 588.0 ],
									"order" : 0,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-224", 0 ],
									"midpoints" : [ 2154.5, 300.0, 2226.0, 300.0, 2226.0, 480.0, 2169.5, 480.0 ],
									"order" : 1,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-116", 0 ],
									"midpoints" : [ 2094.5, 300.0, 2109.5, 300.0 ],
									"order" : 1,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-152", 1 ],
									"midpoints" : [ 2094.5, 300.0, 2085.0, 300.0, 2085.0, 540.0, 2145.0, 540.0, 2145.0, 690.0, 2104.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 0 ],
									"midpoints" : [ 2229.5, 382.0, 9.5, 382.0 ],
									"order" : 31,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-122", 0 ],
									"midpoints" : [ 2229.5, 397.0, 54.5, 397.0 ],
									"order" : 30,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-123", 0 ],
									"midpoints" : [ 2229.5, 397.0, 204.5, 397.0 ],
									"order" : 28,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"midpoints" : [ 2229.5, 367.0, 144.5, 367.0 ],
									"order" : 29,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"midpoints" : [ 2229.5, 397.0, 339.5, 397.0 ],
									"order" : 26,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 0 ],
									"midpoints" : [ 2229.5, 367.0, 279.5, 367.0 ],
									"order" : 27,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"midpoints" : [ 2229.5, 397.0, 474.5, 397.0 ],
									"order" : 24,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"midpoints" : [ 2229.5, 367.0, 414.5, 367.0 ],
									"order" : 25,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"midpoints" : [ 2229.5, 397.0, 624.5, 397.0 ],
									"order" : 22,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 0 ],
									"midpoints" : [ 2229.5, 367.0, 549.5, 367.0 ],
									"order" : 23,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"midpoints" : [ 2229.5, 397.0, 759.5, 397.0 ],
									"order" : 20,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"midpoints" : [ 2229.5, 367.0, 699.5, 367.0 ],
									"order" : 21,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 0 ],
									"midpoints" : [ 2229.5, 397.0, 894.5, 397.0 ],
									"order" : 18,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"midpoints" : [ 2229.5, 367.0, 834.5, 367.0 ],
									"order" : 19,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 0 ],
									"midpoints" : [ 2229.5, 397.0, 1029.5, 397.0 ],
									"order" : 16,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 0 ],
									"midpoints" : [ 2229.5, 367.0, 969.5, 367.0 ],
									"order" : 17,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"midpoints" : [ 2229.5, 397.0, 1164.5, 397.0 ],
									"order" : 14,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 0 ],
									"midpoints" : [ 2229.5, 367.0, 1104.5, 367.0 ],
									"order" : 15,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-139", 0 ],
									"midpoints" : [ 2229.5, 480.0, 1416.0, 480.0, 1416.0, 690.0, 1323.0, 690.0, 1323.0, 750.0, 1314.5, 750.0 ],
									"order" : 12,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-140", 0 ],
									"midpoints" : [ 2229.5, 480.0, 1311.0, 480.0, 1311.0, 690.0, 1254.5, 690.0 ],
									"order" : 13,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 0 ],
									"midpoints" : [ 2229.5, 480.0, 1725.0, 480.0, 1725.0, 690.0, 1593.0, 690.0, 1593.0, 750.0, 1449.5, 750.0 ],
									"order" : 10,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"midpoints" : [ 2229.5, 480.0, 1416.0, 480.0, 1416.0, 690.0, 1389.5, 690.0 ],
									"order" : 11,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-143", 0 ],
									"midpoints" : [ 2229.5, 480.0, 1725.0, 480.0, 1725.0, 690.0, 1593.0, 690.0, 1593.0, 750.0, 1584.5, 750.0 ],
									"order" : 8,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-144", 0 ],
									"midpoints" : [ 2229.5, 480.0, 1725.0, 480.0, 1725.0, 690.0, 1542.0, 690.0, 1542.0, 699.0, 1524.5, 699.0 ],
									"order" : 9,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-145", 0 ],
									"midpoints" : [ 2229.5, 480.0, 1866.0, 480.0, 1866.0, 690.0, 1728.0, 690.0, 1728.0, 750.0, 1719.5, 750.0 ],
									"order" : 6,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"midpoints" : [ 2229.5, 480.0, 1725.0, 480.0, 1725.0, 690.0, 1659.5, 690.0 ],
									"order" : 7,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"midpoints" : [ 2229.5, 480.0, 1971.0, 480.0, 1971.0, 690.0, 1878.0, 690.0, 1878.0, 750.0, 1869.5, 750.0 ],
									"order" : 4,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-148", 0 ],
									"midpoints" : [ 2229.5, 480.0, 1866.0, 480.0, 1866.0, 690.0, 1809.5, 690.0 ],
									"order" : 5,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"midpoints" : [ 2229.5, 480.0, 2004.5, 480.0 ],
									"order" : 2,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"midpoints" : [ 2229.5, 480.0, 1971.0, 480.0, 1971.0, 690.0, 1944.5, 690.0 ],
									"order" : 3,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"midpoints" : [ 2229.5, 480.0, 2145.0, 480.0, 2145.0, 750.0, 2139.5, 750.0 ],
									"order" : 0,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-152", 0 ],
									"midpoints" : [ 2229.5, 480.0, 2145.0, 480.0, 2145.0, 690.0, 2097.0, 690.0, 2097.0, 699.0, 2079.5, 699.0 ],
									"order" : 1,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"midpoints" : [ 1824.5, 90.0, 1899.0, 90.0, 1899.0, 144.0, 1884.5, 144.0 ],
									"order" : 0,
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 1824.5, 33.0, 1824.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"midpoints" : [ 1959.5, 90.0, 2034.0, 90.0, 2034.0, 144.0, 2019.5, 144.0 ],
									"order" : 0,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"midpoints" : [ 1959.5, 33.0, 1959.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"midpoints" : [ 2094.5, 90.0, 2169.0, 90.0, 2169.0, 144.0, 2154.5, 144.0 ],
									"order" : 0,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"midpoints" : [ 2094.5, 33.0, 2094.5, 33.0 ],
									"order" : 1,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-123", 1 ],
									"midpoints" : [ 219.5, 240.0, 255.0, 240.0, 255.0, 540.0, 225.0, 540.0, 225.0, 759.0, 229.0, 759.0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"midpoints" : [ 219.5, 240.0, 255.0, 240.0, 255.0, 540.0, 249.5, 540.0 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 1 ],
									"midpoints" : [ 354.5, 300.0, 285.0, 300.0, 285.0, 540.0, 364.0, 540.0 ],
									"order" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-233", 0 ],
									"midpoints" : [ 354.5, 300.0, 420.0, 300.0, 420.0, 480.0, 369.5, 480.0 ],
									"order" : 1,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 1 ],
									"midpoints" : [ 714.5, 240.0, 705.0, 240.0, 705.0, 480.0, 726.0, 480.0, 726.0, 699.0, 724.0, 699.0 ],
									"order" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-189", 0 ],
									"midpoints" : [ 714.5, 240.0, 729.5, 240.0 ],
									"order" : 1,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-156", 0 ],
									"midpoints" : [ 864.5, 339.0, 864.5, 339.0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 1 ],
									"midpoints" : [ 849.5, 300.0, 840.0, 300.0, 840.0, 540.0, 900.0, 540.0, 900.0, 690.0, 859.0, 690.0 ],
									"order" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"midpoints" : [ 849.5, 300.0, 864.5, 300.0 ],
									"order" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"midpoints" : [ 309.5, 339.0, 309.5, 339.0 ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 0 ],
									"midpoints" : [ 249.5, 579.0, 249.5, 579.0 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-158", 0 ],
									"midpoints" : [ 1283.5, 339.0, 1284.5, 339.0 ],
									"source" : [ "obj-98", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 0.0, 787.0, 1500.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 787.0, 1500.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p stereoDecoder"
				}

			}
, 			{
				"box" : 				{
					"channels" : 16,
					"id" : "obj-50",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 16,
					"numoutlets" : 19,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1710.0, 375.0, 180.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1710.0, 375.0, 180.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "Wet Gain",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "Wet Gain",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "Wet"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-31",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1320.135056018829346, 659.864868879318237, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1320.135056018829346, 659.864868879318237, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[19]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[17]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-32",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1170.135066032409668, 659.864868879318237, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1170.135066032409668, 659.864868879318237, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[20]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[18]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-33",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1320.135056018829346, 539.594606637954712, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1320.135056018829346, 539.594606637954712, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[21]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[19]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-34",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1170.135066032409668, 539.594606637954712, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1170.135066032409668, 539.594606637954712, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[22]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[20]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-35",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 945.135081052780151, 659.864868879318237, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 945.135081052780151, 659.864868879318237, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[23]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[21]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-36",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 795.135091066360474, 659.864868879318237, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.135091066360474, 659.864868879318237, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[24]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[22]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-37",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 945.135081052780151, 539.594606637954712, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 945.135081052780151, 539.594606637954712, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[25]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[23]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-39",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 795.135091066360474, 539.594606637954712, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.135091066360474, 539.594606637954712, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[26]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[24]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-40",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 495.135111093521118, 480.135151147842407, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.135111093521118, 480.135151147842407, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[27]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[25]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-41",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 585.135096073150635, 599.999959945678711, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 585.135096073150635, 599.999959945678711, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[28]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[26]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-43",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 389.729712724685669, 599.729737758636475, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 389.729712724685669, 599.729737758636475, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[29]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[27]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-44",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 495.135111093521118, 720.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.135111093521118, 720.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[30]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[28]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-45",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 120.270262241363525, 480.405373334884644, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.270262241363525, 480.405373334884644, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[31]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[29]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-46",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 195.270257234573364, 599.999959945678711, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 195.270257234573364, 599.999959945678711, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[32]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[30]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-47",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 45.135141134262085, 599.729737758636475, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.135141134262085, 599.729737758636475, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[33]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[31]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-48",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 120.270262241363525, 720.270222187042236, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.270262241363525, 720.270222187042236, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[34]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[32]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-27",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1320.0, 285.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1320.0, 285.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[15]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[13]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-28",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1170.0, 285.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1170.0, 285.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[16]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[14]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-29",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1320.0, 165.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1320.0, 165.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[17]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[15]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-30",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1170.0, 165.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1170.0, 165.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[18]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[16]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-26",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 945.0, 285.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 945.0, 285.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[14]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[12]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-25",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 795.0, 285.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 285.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[13]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[11]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-24",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 945.0, 165.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 945.0, 165.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[12]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[10]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-23",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 795.0, 165.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 165.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[11]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[9]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-19",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 495.0, 105.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 105.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[7]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[5]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-20",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 600.0, 225.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 600.0, 225.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[8]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[6]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-21",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 390.0, 225.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 390.0, 225.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[9]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[7]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-22",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 495.0, 345.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 345.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[10]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[8]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-16",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 135.0, 105.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 135.0, 105.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[6]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[4]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-15",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 210.0, 225.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 210.0, 225.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[5]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[2]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-14",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 45.0, 225.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.0, 225.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[4]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"id" : "obj-12",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 135.0, 345.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 135.0, 345.0, 120.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[3]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.gain~[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-259",
					"maxclass" : "newobj",
					"numinlets" : 37,
					"numoutlets" : 16,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 1710.0, 345.0, 397.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1710.0, 345.0, 180.0, 22.0 ],
					"text" : "pfft~ SloperConvolver 4096 4"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-258",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 100.0, 22.0 ],
					"text" : "Listeners"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 14.0,
					"id" : "obj-257",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 375.0, 100.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 375.0, 100.0, 22.0 ],
					"text" : "SFLs"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-254",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1275.0, 15.0, 81.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 1275.0, 15.0, 81.0, 33.0 ],
					"text" : "Bottom\nhemisphere",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-253",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 884.0, 16.0, 105.512812614440918, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 884.0, 16.0, 105.512812614440918, 47.0 ],
					"text" : "Bottom-\nmiddle \nhemisphere",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-252",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 405.0, 60.0, 81.0, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 405.0, 60.0, 81.0, 47.0 ],
					"text" : "Top-\nmiddle \nhemisphere",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-249",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 61.0, 89.743590652942657, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 30.0, 61.0, 89.743590652942657, 33.0 ],
					"text" : "Top \nhemisphere",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1394.0, 630.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1394.0, 630.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1319.658133029937744, 629.700857281684875, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1319.658133029937744, 629.700857281684875, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1319.658133029937744, 599.786327064037323, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1319.658133029937744, 599.786327064037323, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1244.0, 510.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1244.0, 510.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1169.230781078338623, 510.25641542673111, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1169.230781078338623, 510.25641542673111, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1169.230781078338623, 479.487184345722198, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1169.230781078338623, 479.487184345722198, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-169",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1245.0, 630.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1245.0, 630.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1169.230781078338623, 629.91453629732132, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1169.230781078338623, 629.91453629732132, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1169.230781078338623, 600.000006079673767, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1169.230781078338623, 600.000006079673767, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1394.0, 510.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1394.0, 510.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1319.658133029937744, 510.042736411094666, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1319.658133029937744, 510.042736411094666, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1319.658133029937744, 569.871796846389771, 107.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1319.658133029937744, 569.871796846389771, 107.0, 22.0 ],
					"text" : "open 16_Rrb_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1169.230781078338623, 570.085475862026215, 105.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1169.230781078338623, 570.085475862026215, 105.0, 22.0 ],
					"text" : "open 15_Lrb_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1319.658133029937744, 449.358975112438202, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1319.658133029937744, 449.358975112438202, 106.0, 22.0 ],
					"text" : "open 14_Rfb_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1319.658133029937744, 479.273505330085754, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1319.658133029937744, 479.273505330085754, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1169.230781078338623, 449.572654128074646, 104.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1169.230781078338623, 449.572654128074646, 104.0, 22.0 ],
					"text" : "open 13_Lfb_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 570.0, 690.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 570.0, 690.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 495.0, 690.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 690.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 495.0, 661.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 661.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 570.0, 450.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 570.0, 450.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-186",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 495.0, 450.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 450.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-187",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 495.0, 420.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 420.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 661.0, 570.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 661.0, 570.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 586.0, 570.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 586.0, 570.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-191",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 586.0, 540.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 586.0, 540.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 465.0, 570.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 465.0, 570.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 390.0, 570.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 390.0, 570.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-195",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 630.0, 107.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 630.0, 107.0, 22.0 ],
					"text" : "open 8_Crtm_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-196",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 586.0, 511.0, 109.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 586.0, 511.0, 109.0, 22.0 ],
					"text" : "open 7_Rstm_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 390.0, 510.0, 107.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 390.0, 510.0, 107.0, 22.0 ],
					"text" : "open 6_Lstm_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-198",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 390.0, 540.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 390.0, 540.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-199",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 390.0, 106.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 390.0, 106.0, 22.0 ],
					"text" : "open 5_Cftm_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-202",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1019.0, 631.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1019.0, 631.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-203",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 944.0, 631.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 944.0, 631.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-204",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 944.0, 601.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 944.0, 601.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-206",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 869.0, 511.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 869.0, 511.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-207",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 795.0, 511.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 511.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-208",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 795.0, 480.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 480.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-210",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 870.0, 631.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 870.0, 631.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-211",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 795.0, 631.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 631.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-212",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 795.0, 601.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 601.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-214",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1019.0, 511.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1019.0, 511.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-215",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 944.0, 511.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 944.0, 511.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-216",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 944.0, 571.0, 117.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 944.0, 571.0, 117.0, 22.0 ],
					"text" : "open 12_Rrbm_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-217",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 795.0, 571.0, 114.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 571.0, 114.0, 22.0 ],
					"text" : "open 11_Lrbm_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-218",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 944.0, 451.0, 116.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 944.0, 451.0, 116.0, 22.0 ],
					"text" : "open 10_Rfbm_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-219",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 944.0, 480.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 944.0, 480.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-220",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 795.0, 450.0, 107.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 450.0, 107.0, 22.0 ],
					"text" : "open 9_Lfbm_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-222",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 196.052629709243774, 690.131572365760803, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 196.052629709243774, 690.131572365760803, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-223",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 119.736840963363647, 690.131572365760803, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.736840963363647, 690.131572365760803, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-224",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 119.736840963363647, 660.526309490203857, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.736840963363647, 660.526309490203857, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-226",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 196.052629709243774, 449.999995708465576, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 196.052629709243774, 449.999995708465576, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-227",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 119.736840963363647, 449.999995708465576, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.736840963363647, 449.999995708465576, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-228",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 119.736840963363647, 420.39473283290863, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.736840963363647, 420.39473283290863, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-230",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 271.0, 570.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 271.0, 570.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-231",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 195.726497709751129, 569.871796846389771, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 195.726497709751129, 569.871796846389771, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-232",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 195.726497709751129, 539.957266628742218, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 195.726497709751129, 539.957266628742218, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-234",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 120.0, 570.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 120.0, 570.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-235",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 45.299145758152008, 570.085475862026215, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.299145758152008, 570.085475862026215, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-236",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 119.736840963363647, 630.263151884078979, 97.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.736840963363647, 630.263151884078979, 97.0, 22.0 ],
					"text" : "open 4_Crt_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-237",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 195.726497709751129, 510.042736411094666, 99.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 195.726497709751129, 510.042736411094666, 99.0, 22.0 ],
					"text" : "open 3_Rst_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-238",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.299145758152008, 510.25641542673111, 97.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.299145758152008, 510.25641542673111, 97.0, 22.0 ],
					"text" : "open 2_Lst_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-239",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 45.299145758152008, 540.170945644378662, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.299145758152008, 540.170945644378662, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-241",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 119.736840963363647, 390.131575226783752, 96.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.736840963363647, 390.131575226783752, 96.0, 22.0 ],
					"text" : "open 1_Cft_SFL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1395.0, 255.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1395.0, 255.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1320.0, 255.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1320.0, 255.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1320.0, 225.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1320.0, 225.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1245.0, 136.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1245.0, 136.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1170.0, 136.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1170.0, 136.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1170.0, 105.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1170.0, 105.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1246.0, 255.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1246.0, 255.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1170.0, 255.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1170.0, 255.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1170.0, 225.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1170.0, 225.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1395.0, 136.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1395.0, 136.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1320.0, 136.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1320.0, 136.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1320.0, 196.0, 78.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1320.0, 196.0, 78.0, 22.0 ],
					"text" : "open 16_Rrb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1170.0, 196.0, 76.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1170.0, 196.0, 76.0, 22.0 ],
					"text" : "open 15_Lrb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-157",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1320.0, 75.0, 77.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1320.0, 75.0, 77.0, 22.0 ],
					"text" : "open 14_Rfb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1320.0, 105.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1320.0, 105.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1170.0, 75.0, 75.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1170.0, 75.0, 75.0, 22.0 ],
					"text" : "open 13_Lfb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 571.0, 315.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 571.0, 315.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 495.0, 315.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 315.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-122",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 495.0, 286.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 286.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 571.0, 75.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 571.0, 75.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 495.0, 75.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 75.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-126",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 495.0, 45.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 45.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 676.0, 195.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 676.0, 195.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 601.0, 195.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 601.0, 195.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 601.0, 165.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 601.0, 165.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 465.0, 195.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 465.0, 195.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 390.0, 195.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 390.0, 195.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 255.0, 78.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 255.0, 78.0, 22.0 ],
					"text" : "open 8_Crtm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 601.0, 135.0, 80.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 601.0, 135.0, 80.0, 22.0 ],
					"text" : "open 7_Rstm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 390.0, 135.0, 78.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 390.0, 135.0, 78.0, 22.0 ],
					"text" : "open 6_Lstm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 390.0, 165.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 390.0, 165.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 15.0, 77.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 495.0, 15.0, 77.0, 22.0 ],
					"text" : "open 5_Cftm"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.509803921568627, 0.647058823529412, 0.752941176470588, 0.5 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-116",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1125.0, 0.0, 375.0, 375.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1125.0, 0.0, 375.0, 375.0 ],
					"proportion" : 0.5,
					"rounded" : 0,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1019.0, 256.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1019.0, 256.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 945.0, 256.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 945.0, 256.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 945.0, 226.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 945.0, 226.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 869.0, 136.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 869.0, 136.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 795.0, 136.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 136.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 795.0, 105.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 105.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 870.0, 256.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 870.0, 256.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 795.0, 256.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 256.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 795.0, 226.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 226.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1019.0, 136.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1019.0, 136.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 945.0, 136.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 945.0, 136.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 945.0, 196.0, 88.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 945.0, 196.0, 88.0, 22.0 ],
					"text" : "open 12_Rrbm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 795.0, 196.0, 85.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 196.0, 85.0, 22.0 ],
					"text" : "open 11_Lrbm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 945.0, 75.0, 87.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 945.0, 75.0, 87.0, 22.0 ],
					"text" : "open 10_Rfbm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 945.0, 105.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 945.0, 105.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 795.0, 75.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 795.0, 75.0, 79.0, 22.0 ],
					"text" : "open 9_Lfbm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 211.0, 315.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 315.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 135.042736411094666, 315.384618580341339, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 135.042736411094666, 315.384618580341339, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 135.042736411094666, 285.470088362693787, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 135.042736411094666, 285.470088362693787, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 211.0, 75.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 75.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 135.042736411094666, 75.213675975799561, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 135.042736411094666, 75.213675975799561, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 135.042736411094666, 45.299145758152008, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 135.042736411094666, 45.299145758152008, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 286.0, 195.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 286.0, 195.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 211.0, 195.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 195.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 211.0, 165.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 165.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 121.0, 195.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 121.0, 195.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 46.0, 195.0, 47.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 46.0, 195.0, 47.0, 22.0 ],
					"text" : "*~ 0.99"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.042736411094666, 255.555558145046234, 68.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 135.042736411094666, 255.555558145046234, 68.0, 22.0 ],
					"text" : "open 4_Crt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 211.0, 135.0, 70.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 135.0, 70.0, 22.0 ],
					"text" : "open 3_Rst"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.0, 135.0, 68.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 46.0, 135.0, 68.0, 22.0 ],
					"text" : "open 2_Lst"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 46.0, 165.0, 79.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 46.0, 165.0, 79.0, 22.0 ],
					"text" : "sharedmem~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 0.0, 345.0, 58.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 345.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.042736411094666, 15.384615540504456, 67.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 135.042736411094666, 15.384615540504456, 67.0, 22.0 ],
					"text" : "open 1_Cft"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.325490196078431, 0.443137254901961, 0.407843137254902, 0.5 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-93",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 375.0, 375.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 375.0, 375.0 ],
					"proportion" : 0.5,
					"rounded" : 0,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.956862745098039, 0.733333333333333, 0.227450980392157, 0.5 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-118",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 375.0, 0.0, 375.0, 375.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 375.0, 0.0, 375.0, 375.0 ],
					"proportion" : 0.5,
					"rounded" : 0,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.537254901960784, 0.345098039215686, 0.505882352941176, 0.5 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-117",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 750.0, 0.0, 375.0, 375.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 750.0, 0.0, 375.0, 375.0 ],
					"proportion" : 0.5,
					"rounded" : 0,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.509803921568627, 0.647058823529412, 0.752941176470588, 0.5 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-200",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1125.0, 375.0, 375.0, 375.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1125.0, 375.0, 375.0, 375.0 ],
					"proportion" : 0.5,
					"rounded" : 0,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.325490196078431, 0.443137254901961, 0.407843137254902, 0.5 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-242",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 375.0, 375.0, 375.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 375.0, 375.0, 375.0 ],
					"proportion" : 0.5,
					"rounded" : 0,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.956862745098039, 0.733333333333333, 0.227450980392157, 0.5 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-243",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 374.358978152275085, 375.0, 375.0, 375.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 374.358978152275085, 375.0, 375.0, 375.0 ],
					"proportion" : 0.5,
					"rounded" : 0,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.537254901960784, 0.345098039215686, 0.505882352941176, 0.5 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-244",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 749.57265716791153, 375.0, 375.0, 375.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 749.57265716791153, 375.0, 375.0, 375.0 ],
					"proportion" : 0.5,
					"rounded" : 0,
					"shape" : 1
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.509803921568627, 0.27843137254902, 0.215686274509804, 0.5 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-245",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 375.0, 1500.0, 375.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 375.0, 1500.0, 375.0 ],
					"proportion" : 0.5,
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"midpoints" : [ 55.5, 189.0, 55.5, 189.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"midpoints" : [ 115.5, 189.0, 130.5, 189.0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 804.5, 159.0, 804.5, 159.0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"midpoints" : [ 804.5, 129.0, 804.5, 129.0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"midpoints" : [ 864.5, 129.0, 878.5, 129.0 ],
					"source" : [ "obj-101", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 879.5, 279.0, 804.5, 279.0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 804.5, 279.0, 804.5, 279.0 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"midpoints" : [ 864.5, 249.0, 879.5, 249.0 ],
					"source" : [ "obj-105", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"midpoints" : [ 804.5, 249.0, 804.5, 249.0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 1028.5, 159.0, 954.5, 159.0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 954.5, 159.0, 954.5, 159.0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"midpoints" : [ 954.5, 219.0, 954.5, 219.0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 36 ],
					"midpoints" : [ 1959.5, 75.0, 2097.5, 75.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"midpoints" : [ 804.5, 219.0, 804.5, 219.0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"midpoints" : [ 954.5, 99.0, 954.5, 99.0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"midpoints" : [ 1014.5, 129.0, 1028.5, 129.0 ],
					"source" : [ "obj-112", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"midpoints" : [ 954.5, 129.0, 954.5, 129.0 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"midpoints" : [ 804.5, 99.0, 804.5, 99.0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 6 ],
					"midpoints" : [ 144.5, 375.0, 963.5, 375.0, 963.5, 334.0, 1782.5, 334.0 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 3 ],
					"midpoints" : [ 144.5, 369.5, 1541.700000000000045, 369.5 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 580.5, 339.0, 504.5, 339.0 ],
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 504.5, 339.0, 504.5, 339.0 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 0 ],
					"midpoints" : [ 564.5, 309.0, 580.5, 309.0 ],
					"source" : [ "obj-122", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"midpoints" : [ 504.5, 309.0, 504.5, 309.0 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 580.5, 99.0, 504.5, 99.0 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 504.5, 99.0, 504.5, 99.0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"midpoints" : [ 564.5, 69.0, 580.5, 69.0 ],
					"source" : [ "obj-126", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"midpoints" : [ 504.5, 69.0, 504.5, 69.0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 685.5, 219.0, 609.5, 219.0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 610.5, 219.0, 609.5, 219.0 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"midpoints" : [ 220.5, 159.0, 220.5, 159.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"midpoints" : [ 670.5, 189.0, 685.5, 189.0 ],
					"source" : [ "obj-130", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"midpoints" : [ 610.5, 189.0, 610.5, 189.0 ],
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 474.5, 219.0, 399.5, 219.0 ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 399.5, 219.0, 399.5, 219.0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"midpoints" : [ 504.5, 279.0, 504.5, 279.0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"midpoints" : [ 610.5, 159.0, 610.5, 159.0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"midpoints" : [ 399.5, 159.0, 399.5, 159.0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"midpoints" : [ 459.5, 189.0, 474.5, 189.0 ],
					"source" : [ "obj-137", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"midpoints" : [ 399.5, 189.0, 399.5, 189.0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"midpoints" : [ 504.5, 39.0, 504.5, 39.0 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 2 ],
					"midpoints" : [ 54.5, 294.5, 1740.5, 294.5 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 1 ],
					"midpoints" : [ 54.5, 309.5, 1520.233333333333348, 309.5 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 1404.5, 279.0, 1329.5, 279.0 ],
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 1329.5, 279.0, 1329.5, 279.0 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"midpoints" : [ 1389.5, 249.0, 1404.5, 249.0 ],
					"source" : [ "obj-143", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"midpoints" : [ 1329.5, 249.0, 1329.5, 249.0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 1254.5, 159.0, 1179.5, 159.0 ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 1179.5, 159.0, 1179.5, 159.0 ],
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"midpoints" : [ 1239.5, 129.0, 1254.5, 129.0 ],
					"source" : [ "obj-147", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"midpoints" : [ 1179.5, 129.0, 1179.5, 129.0 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 1255.5, 279.0, 1179.5, 279.0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 4 ],
					"midpoints" : [ 219.5, 294.5, 1761.5, 294.5 ],
					"order" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 2 ],
					"midpoints" : [ 219.5, 309.5, 1530.966666666666697, 309.5 ],
					"order" : 1,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 1179.5, 279.0, 1179.5, 279.0 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"midpoints" : [ 1239.5, 249.0, 1255.5, 249.0 ],
					"source" : [ "obj-151", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"midpoints" : [ 1179.5, 249.0, 1179.5, 249.0 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 1404.5, 159.0, 1329.5, 159.0 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 1329.5, 159.0, 1329.5, 159.0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"midpoints" : [ 1329.5, 219.0, 1329.5, 219.0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"midpoints" : [ 1179.5, 219.0, 1179.5, 219.0 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"midpoints" : [ 1329.5, 99.0, 1329.5, 99.0 ],
					"source" : [ "obj-157", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"midpoints" : [ 1389.5, 129.0, 1404.5, 129.0 ],
					"source" : [ "obj-158", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"midpoints" : [ 1329.5, 129.0, 1329.5, 129.0 ],
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"midpoints" : [ 1179.5, 99.0, 1179.5, 99.0 ],
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 144.5, 234.5, 1719.5, 234.5 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 144.5, 249.5, 1509.5, 249.5 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 1403.5, 654.0, 1329.635056018829346, 654.0 ],
					"source" : [ "obj-161", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 1329.158133029937744, 654.0, 1329.635056018829346, 654.0 ],
					"source" : [ "obj-162", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"midpoints" : [ 1389.158133029937744, 624.0, 1403.5, 624.0 ],
					"source" : [ "obj-163", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-162", 0 ],
					"midpoints" : [ 1329.158133029937744, 624.0, 1329.158133029937744, 624.0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 1253.5, 534.0, 1179.635066032409668, 534.0 ],
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 1178.730781078338623, 534.0, 1179.635066032409668, 534.0 ],
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"midpoints" : [ 1238.730781078338623, 504.0, 1253.5, 504.0 ],
					"source" : [ "obj-167", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"midpoints" : [ 1178.730781078338623, 504.0, 1178.730781078338623, 504.0 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 1254.5, 654.0, 1179.635066032409668, 654.0 ],
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"midpoints" : [ 144.542736411094666, 279.0, 144.542736411094666, 279.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 1178.730781078338623, 654.0, 1179.635066032409668, 654.0 ],
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"midpoints" : [ 1238.730781078338623, 624.0, 1254.5, 624.0 ],
					"source" : [ "obj-171", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"midpoints" : [ 1178.730781078338623, 624.0, 1178.730781078338623, 624.0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 1403.5, 534.0, 1329.635056018829346, 534.0 ],
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 1329.158133029937744, 534.0, 1329.635056018829346, 534.0 ],
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"midpoints" : [ 1329.158133029937744, 594.0, 1329.158133029937744, 594.0 ],
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"midpoints" : [ 1178.730781078338623, 594.0, 1178.730781078338623, 594.0 ],
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"midpoints" : [ 1329.158133029937744, 474.0, 1329.158133029937744, 474.0 ],
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"midpoints" : [ 1389.158133029937744, 504.0, 1403.5, 504.0 ],
					"source" : [ "obj-178", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"midpoints" : [ 1329.158133029937744, 504.0, 1329.158133029937744, 504.0 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"midpoints" : [ 1178.730781078338623, 474.0, 1178.730781078338623, 474.0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 11 ],
					"midpoints" : [ 1014.5, 780.0, 1027.6875, 780.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 11 ],
					"midpoints" : [ 1025.0, 813.0, 1044.566666666666606, 813.0 ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 11 ],
					"midpoints" : [ 1035.5, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 834.0, 1425.0, 834.0, 1425.0, 840.0, 1060.566666666666606, 840.0 ],
					"source" : [ "obj-18", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 11 ],
					"midpoints" : [ 1046.0, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 864.0, 1443.0, 864.0, 1443.0, 873.0, 1074.566666666666606, 873.0 ],
					"source" : [ "obj-18", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"midpoints" : [ 579.5, 714.0, 504.635111093521118, 714.0 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"midpoints" : [ 504.5, 714.0, 504.635111093521118, 714.0 ],
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"midpoints" : [ 564.5, 684.0, 579.5, 684.0 ],
					"source" : [ "obj-183", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 0 ],
					"midpoints" : [ 504.5, 684.0, 504.5, 684.0 ],
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 579.5, 474.0, 504.635111093521118, 474.0 ],
					"source" : [ "obj-185", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 504.5, 474.0, 504.635111093521118, 474.0 ],
					"source" : [ "obj-186", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-185", 0 ],
					"midpoints" : [ 564.5, 444.0, 579.5, 444.0 ],
					"source" : [ "obj-187", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-186", 0 ],
					"midpoints" : [ 504.5, 444.0, 504.5, 444.0 ],
					"source" : [ "obj-187", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 670.5, 594.0, 594.635096073150635, 594.0 ],
					"source" : [ "obj-189", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 8 ],
					"midpoints" : [ 504.5, 234.5, 1803.5, 234.5 ],
					"order" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 4 ],
					"midpoints" : [ 504.5, 249.5, 1552.433333333333394, 249.5 ],
					"order" : 1,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 595.5, 594.0, 594.635096073150635, 594.0 ],
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-189", 0 ],
					"midpoints" : [ 655.5, 564.0, 670.5, 564.0 ],
					"source" : [ "obj-191", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"midpoints" : [ 595.5, 564.0, 595.5, 564.0 ],
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 474.5, 594.0, 399.229712724685669, 594.0 ],
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 399.5, 594.0, 399.229712724685669, 594.0 ],
					"source" : [ "obj-194", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"midpoints" : [ 504.5, 654.0, 504.5, 654.0 ],
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"midpoints" : [ 595.5, 534.0, 595.5, 534.0 ],
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-198", 0 ],
					"midpoints" : [ 399.5, 534.0, 399.5, 534.0 ],
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-193", 0 ],
					"midpoints" : [ 459.5, 564.0, 474.5, 564.0 ],
					"source" : [ "obj-198", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"midpoints" : [ 399.5, 564.0, 399.5, 564.0 ],
					"source" : [ "obj-198", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 0 ],
					"midpoints" : [ 504.5, 414.0, 504.5, 414.0 ],
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 12 ],
					"midpoints" : [ 609.5, 294.5, 1845.5, 294.5 ],
					"order" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 6 ],
					"midpoints" : [ 609.5, 255.0, 735.0, 255.0, 735.0, 0.0, 747.0, 0.0, 747.0, -3.0, 1500.0, -3.0, 1500.0, 0.0, 1573.900000000000091, 0.0 ],
					"order" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 1028.5, 654.0, 954.635081052780151, 654.0 ],
					"source" : [ "obj-202", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 953.5, 654.0, 954.635081052780151, 654.0 ],
					"source" : [ "obj-203", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-202", 0 ],
					"midpoints" : [ 1013.5, 624.0, 1028.5, 624.0 ],
					"source" : [ "obj-204", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-203", 0 ],
					"midpoints" : [ 953.5, 624.0, 953.5, 624.0 ],
					"source" : [ "obj-204", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 878.5, 534.0, 804.635091066360474, 534.0 ],
					"source" : [ "obj-206", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 804.5, 534.0, 804.635091066360474, 534.0 ],
					"source" : [ "obj-207", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-206", 0 ],
					"midpoints" : [ 864.5, 504.0, 878.5, 504.0 ],
					"source" : [ "obj-208", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-207", 0 ],
					"midpoints" : [ 804.5, 504.0, 804.5, 504.0 ],
					"source" : [ "obj-208", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 10 ],
					"midpoints" : [ 399.5, 294.5, 1824.5, 294.5 ],
					"order" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 5 ],
					"midpoints" : [ 399.5, 309.5, 1563.166666666666742, 309.5 ],
					"order" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 879.5, 654.0, 804.635091066360474, 654.0 ],
					"source" : [ "obj-210", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"midpoints" : [ 804.5, 654.0, 804.635091066360474, 654.0 ],
					"source" : [ "obj-211", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-210", 0 ],
					"midpoints" : [ 864.5, 624.0, 879.5, 624.0 ],
					"source" : [ "obj-212", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-211", 0 ],
					"midpoints" : [ 804.5, 624.0, 804.5, 624.0 ],
					"source" : [ "obj-212", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 1028.5, 534.0, 954.635081052780151, 534.0 ],
					"source" : [ "obj-214", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 953.5, 534.0, 954.635081052780151, 534.0 ],
					"source" : [ "obj-215", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-204", 0 ],
					"midpoints" : [ 953.5, 594.0, 953.5, 594.0 ],
					"source" : [ "obj-216", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-212", 0 ],
					"midpoints" : [ 804.5, 594.0, 804.5, 594.0 ],
					"source" : [ "obj-217", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-219", 0 ],
					"midpoints" : [ 953.5, 474.0, 953.5, 474.0 ],
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-214", 0 ],
					"midpoints" : [ 1013.5, 504.0, 1028.5, 504.0 ],
					"source" : [ "obj-219", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-215", 0 ],
					"midpoints" : [ 953.5, 504.0, 953.5, 504.0 ],
					"source" : [ "obj-219", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 14 ],
					"midpoints" : [ 504.5, 375.0, 1185.5, 375.0, 1185.5, 334.0, 1866.5, 334.0 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 7 ],
					"midpoints" : [ 504.5, 369.5, 1584.633333333333439, 369.5 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-208", 0 ],
					"midpoints" : [ 804.5, 474.0, 804.5, 474.0 ],
					"source" : [ "obj-220", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 205.552629709243774, 714.0, 129.770262241363525, 714.0 ],
					"source" : [ "obj-222", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 129.236840963363647, 714.0, 129.770262241363525, 714.0 ],
					"source" : [ "obj-223", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-222", 0 ],
					"midpoints" : [ 189.236840963363647, 684.0, 205.552629709243774, 684.0 ],
					"source" : [ "obj-224", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"midpoints" : [ 129.236840963363647, 684.0, 129.236840963363647, 684.0 ],
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 205.552629709243774, 474.0, 129.770262241363525, 474.0 ],
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 129.236840963363647, 474.0, 129.770262241363525, 474.0 ],
					"source" : [ "obj-227", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-226", 0 ],
					"midpoints" : [ 189.236840963363647, 444.0, 205.552629709243774, 444.0 ],
					"source" : [ "obj-228", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-227", 0 ],
					"midpoints" : [ 129.236840963363647, 444.0, 129.236840963363647, 444.0 ],
					"source" : [ "obj-228", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 16 ],
					"midpoints" : [ 804.5, 186.0, 780.0, 186.0, 780.0, 0.0, 1122.0, 0.0, 1122.0, -3.0, 1500.0, -3.0, 1500.0, 0.0, 1695.0, 0.0, 1695.0, 330.0, 1887.5, 330.0 ],
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 8 ],
					"midpoints" : [ 804.5, 186.0, 780.0, 186.0, 780.0, 0.0, 1122.0, 0.0, 1122.0, -3.0, 1500.0, -3.0, 1500.0, 0.0, 1595.366666666666561, 0.0 ],
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 280.5, 594.0, 204.770257234573364, 594.0 ],
					"source" : [ "obj-230", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 205.226497709751129, 594.0, 204.770257234573364, 594.0 ],
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-230", 0 ],
					"midpoints" : [ 265.226497709751129, 564.0, 280.5, 564.0 ],
					"source" : [ "obj-232", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"midpoints" : [ 205.226497709751129, 564.0, 205.226497709751129, 564.0 ],
					"source" : [ "obj-232", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"midpoints" : [ 129.5, 594.0, 54.635141134262085, 594.0 ],
					"source" : [ "obj-234", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"midpoints" : [ 54.799145758152008, 594.0, 54.635141134262085, 594.0 ],
					"source" : [ "obj-235", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-224", 0 ],
					"midpoints" : [ 129.236840963363647, 654.0, 129.236840963363647, 654.0 ],
					"source" : [ "obj-236", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-232", 0 ],
					"midpoints" : [ 205.226497709751129, 534.0, 205.226497709751129, 534.0 ],
					"source" : [ "obj-237", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-239", 0 ],
					"midpoints" : [ 54.799145758152008, 534.0, 54.799145758152008, 534.0 ],
					"source" : [ "obj-238", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-234", 0 ],
					"midpoints" : [ 114.799145758152008, 564.0, 129.5, 564.0 ],
					"source" : [ "obj-239", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-235", 0 ],
					"midpoints" : [ 54.799145758152008, 564.0, 54.799145758152008, 564.0 ],
					"source" : [ "obj-239", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 18 ],
					"midpoints" : [ 954.5, 186.0, 1110.0, 186.0, 1110.0, 0.0, 1122.0, 0.0, 1122.0, -3.0, 1500.0, -3.0, 1500.0, 0.0, 1695.0, 0.0, 1695.0, 330.0, 1908.5, 330.0 ],
					"order" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 9 ],
					"midpoints" : [ 954.5, 186.0, 1110.0, 186.0, 1110.0, 0.0, 1122.0, 0.0, 1122.0, -3.0, 1500.0, -3.0, 1500.0, 0.0, 1606.099999999999909, 0.0 ],
					"order" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-228", 0 ],
					"midpoints" : [ 129.236840963363647, 414.0, 129.236840963363647, 414.0 ],
					"source" : [ "obj-241", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 20 ],
					"midpoints" : [ 804.5, 315.0, 1110.0, 315.0, 1110.0, 0.0, 1122.0, 0.0, 1122.0, -3.0, 1500.0, -3.0, 1500.0, 0.0, 1695.0, 0.0, 1695.0, 330.0, 1929.5, 330.0 ],
					"order" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 10 ],
					"midpoints" : [ 804.5, 315.0, 1110.0, 315.0, 1110.0, 0.0, 1122.0, 0.0, 1122.0, -3.0, 1500.0, -3.0, 1500.0, 0.0, 1616.833333333333258, 0.0 ],
					"order" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 15 ],
					"midpoints" : [ 2097.5, 378.0, 1890.0, 378.0, 1890.0, 372.0, 1880.5, 372.0 ],
					"source" : [ "obj-259", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 14 ],
					"midpoints" : [ 2072.300000000000182, 378.0, 1890.0, 378.0, 1890.0, 369.0, 1869.766666666666652, 369.0 ],
					"source" : [ "obj-259", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 13 ],
					"midpoints" : [ 2047.099999999999909, 378.0, 1890.0, 378.0, 1890.0, 369.0, 1859.033333333333303, 369.0 ],
					"source" : [ "obj-259", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 12 ],
					"midpoints" : [ 2021.900000000000091, 378.0, 1890.0, 378.0, 1890.0, 372.0, 1848.299999999999955, 372.0 ],
					"source" : [ "obj-259", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 11 ],
					"midpoints" : [ 1996.700000000000045, 378.0, 1890.0, 378.0, 1890.0, 372.0, 1837.566666666666606, 372.0 ],
					"source" : [ "obj-259", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 10 ],
					"midpoints" : [ 1971.5, 378.0, 1890.0, 378.0, 1890.0, 372.0, 1826.833333333333258, 372.0 ],
					"source" : [ "obj-259", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 9 ],
					"midpoints" : [ 1946.299999999999955, 378.0, 1890.0, 378.0, 1890.0, 369.0, 1816.099999999999909, 369.0 ],
					"source" : [ "obj-259", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 8 ],
					"midpoints" : [ 1921.099999999999909, 369.0, 1805.366666666666561, 369.0 ],
					"source" : [ "obj-259", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 7 ],
					"midpoints" : [ 1895.900000000000091, 369.0, 1794.633333333333439, 369.0 ],
					"source" : [ "obj-259", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 6 ],
					"midpoints" : [ 1870.700000000000045, 369.0, 1783.900000000000091, 369.0 ],
					"source" : [ "obj-259", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 5 ],
					"midpoints" : [ 1845.5, 369.0, 1773.166666666666742, 369.0 ],
					"source" : [ "obj-259", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 4 ],
					"midpoints" : [ 1820.299999999999955, 369.0, 1762.433333333333394, 369.0 ],
					"source" : [ "obj-259", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 3 ],
					"midpoints" : [ 1795.099999999999909, 369.0, 1751.700000000000045, 369.0 ],
					"source" : [ "obj-259", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 2 ],
					"midpoints" : [ 1769.900000000000091, 369.0, 1740.966666666666697, 369.0 ],
					"source" : [ "obj-259", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"midpoints" : [ 1744.700000000000045, 369.0, 1730.233333333333348, 369.0 ],
					"source" : [ "obj-259", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 1719.5, 369.0, 1719.5, 369.0 ],
					"source" : [ "obj-259", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 22 ],
					"midpoints" : [ 954.5, 315.0, 1110.0, 315.0, 1110.0, 0.0, 1122.0, 0.0, 1122.0, -3.0, 1500.0, -3.0, 1500.0, 0.0, 1695.0, 0.0, 1695.0, 330.0, 1950.5, 330.0 ],
					"order" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 11 ],
					"midpoints" : [ 954.5, 315.0, 1110.0, 315.0, 1110.0, 0.0, 1122.0, 0.0, 1122.0, -3.0, 1500.0, -3.0, 1500.0, 0.0, 1627.566666666666606, 0.0 ],
					"order" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 0 ],
					"midpoints" : [ 9.5, 780.0, 9.5, 780.0 ],
					"source" : [ "obj-265", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 0 ],
					"midpoints" : [ 20.0, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 24.5, 810.0 ],
					"source" : [ "obj-265", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 0 ],
					"midpoints" : [ 30.5, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 843.0, 40.5, 843.0 ],
					"source" : [ "obj-265", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 0 ],
					"midpoints" : [ 41.0, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 873.0, 54.5, 873.0 ],
					"source" : [ "obj-265", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-270", 0 ],
					"midpoints" : [ 1524.5, 825.0, 1524.5, 825.0 ],
					"source" : [ "obj-269", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 30 ],
					"midpoints" : [ 1329.5, 330.0, 2034.5, 330.0 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 15 ],
					"midpoints" : [ 1329.5, 360.0, 1670.5, 360.0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 1524.5, 855.0, 1500.0, 855.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 1014.5, 753.0 ],
					"order" : 4,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 0 ],
					"midpoints" : [ 1524.5, 909.0, 0.0, 909.0, 0.0, 810.0, -3.0, 810.0, -3.0, 783.0, 51.0, 783.0, 51.0, 753.0, 9.5, 753.0 ],
					"order" : 15,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 1524.5, 855.0, 1500.0, 855.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 1389.5, 753.0 ],
					"order" : 0,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 1524.5, 855.0, 1500.0, 855.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 1314.5, 753.0 ],
					"order" : 1,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"midpoints" : [ 1524.5, 855.0, 1500.0, 855.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 1224.5, 753.0 ],
					"order" : 2,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"midpoints" : [ 1524.5, 855.0, 1500.0, 855.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 1120.5, 753.0 ],
					"order" : 3,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"midpoints" : [ 1524.5, 855.0, 1500.0, 855.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 924.5, 753.0 ],
					"order" : 5,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"midpoints" : [ 1524.5, 855.0, 1500.0, 855.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 834.5, 753.0 ],
					"order" : 6,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"midpoints" : [ 1524.5, 855.0, 1500.0, 855.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 744.5, 753.0 ],
					"order" : 7,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 1524.5, 855.0, 1500.0, 855.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 654.5, 753.0 ],
					"order" : 8,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"midpoints" : [ 1524.5, 855.0, 1500.0, 855.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 564.5, 753.0 ],
					"order" : 9,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 1524.5, 909.0, 0.0, 909.0, 0.0, 810.0, -3.0, 810.0, -3.0, 783.0, 60.0, 783.0, 60.0, 762.0, 87.0, 762.0, 87.0, 753.0, 100.5, 753.0 ],
					"order" : 14,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 1524.5, 863.0, 999.5, 863.0, 999.5, 746.0, 474.5, 746.0 ],
					"order" : 10,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"midpoints" : [ 1524.5, 863.0, 947.0, 863.0, 947.0, 746.0, 369.5, 746.0 ],
					"order" : 11,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"midpoints" : [ 1524.5, 863.0, 902.5, 863.0, 902.5, 746.0, 280.5, 746.0 ],
					"order" : 12,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 1524.5, 863.0, 857.0, 863.0, 857.0, 746.0, 189.5, 746.0 ],
					"order" : 13,
					"source" : [ "obj-270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 28 ],
					"midpoints" : [ 1179.5, 330.0, 2013.5, 330.0 ],
					"order" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 14 ],
					"midpoints" : [ 1179.5, 360.0, 1659.766666666666652, 360.0 ],
					"order" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 26 ],
					"midpoints" : [ 1329.5, 186.0, 1305.0, 186.0, 1305.0, 330.0, 1992.5, 330.0 ],
					"order" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 13 ],
					"midpoints" : [ 1329.5, 186.0, 1305.0, 186.0, 1305.0, 360.0, 1649.033333333333303, 360.0 ],
					"order" : 1,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 1629.5, 792.0, 1629.5, 792.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 24 ],
					"midpoints" : [ 1179.5, 186.0, 1155.0, 186.0, 1155.0, 330.0, 1971.5, 330.0 ],
					"order" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 12 ],
					"midpoints" : [ 1179.5, 186.0, 1155.0, 186.0, 1155.0, 360.0, 1638.299999999999955, 360.0 ],
					"order" : 1,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 31 ],
					"midpoints" : [ 1329.635056018829346, 690.0, 2118.0, 690.0, 2118.0, 330.0, 2045.0, 330.0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 29 ],
					"midpoints" : [ 1179.635066032409668, 690.0, 2118.0, 690.0, 2118.0, 330.0, 2024.0, 330.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 27 ],
					"midpoints" : [ 1329.635056018829346, 561.0, 1305.0, 561.0, 1305.0, 387.0, 1497.0, 387.0, 1497.0, 372.0, 1512.0, 372.0, 1512.0, 330.0, 2003.0, 330.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 25 ],
					"midpoints" : [ 1179.635066032409668, 561.0, 1155.0, 561.0, 1155.0, 387.0, 1497.0, 387.0, 1497.0, 372.0, 1512.0, 372.0, 1512.0, 330.0, 1982.0, 330.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 23 ],
					"midpoints" : [ 954.635081052780151, 744.0, 1122.0, 744.0, 1122.0, 750.0, 1512.0, 750.0, 1512.0, 672.0, 2118.0, 672.0, 2118.0, 330.0, 1961.0, 330.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 21 ],
					"midpoints" : [ 804.635091066360474, 744.0, 1122.0, 744.0, 1122.0, 750.0, 1512.0, 750.0, 1512.0, 672.0, 2118.0, 672.0, 2118.0, 330.0, 1940.0, 330.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 19 ],
					"midpoints" : [ 954.635081052780151, 561.0, 930.0, 561.0, 930.0, 744.0, 1122.0, 744.0, 1122.0, 750.0, 1512.0, 750.0, 1512.0, 672.0, 2118.0, 672.0, 2118.0, 330.0, 1919.0, 330.0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"midpoints" : [ 1937.5, 57.0, 1944.5, 57.0 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 17 ],
					"midpoints" : [ 804.635091066360474, 561.0, 780.0, 561.0, 780.0, 744.0, 1122.0, 744.0, 1122.0, 750.0, 1512.0, 750.0, 1512.0, 672.0, 2118.0, 672.0, 2118.0, 330.0, 1898.0, 330.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 16 ],
					"midpoints" : [ 1629.5, 864.0, 1500.0, 864.0, 1500.0, 783.0, 1490.5, 783.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 9 ],
					"midpoints" : [ 504.635111093521118, 510.0, 582.0, 510.0, 582.0, 501.0, 627.0, 501.0, 627.0, 495.0, 735.0, 495.0, 735.0, 750.0, 1512.0, 750.0, 1512.0, 672.0, 2118.0, 672.0, 2118.0, 330.0, 1814.0, 330.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 13 ],
					"midpoints" : [ 594.635096073150635, 621.0, 735.0, 621.0, 735.0, 750.0, 1512.0, 750.0, 1512.0, 672.0, 2118.0, 672.0, 2118.0, 330.0, 1856.0, 330.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 33 ],
					"midpoints" : [ 1944.5, 330.0, 2066.0, 330.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 11 ],
					"midpoints" : [ 399.229712724685669, 657.0, 735.0, 657.0, 735.0, 750.0, 1512.0, 750.0, 1512.0, 672.0, 2118.0, 672.0, 2118.0, 330.0, 1835.0, 330.0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 15 ],
					"midpoints" : [ 504.635111093521118, 741.0, 744.0, 741.0, 744.0, 750.0, 1512.0, 750.0, 1512.0, 672.0, 2118.0, 672.0, 2118.0, 330.0, 1877.0, 330.0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 1 ],
					"midpoints" : [ 129.770262241363525, 510.405373334884644, 929.885131120681763, 510.405373334884644, 929.885131120681763, 334.0, 1730.0, 334.0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 5 ],
					"midpoints" : [ 204.770257234573364, 629.999959945678711, 988.385128617286682, 629.999959945678711, 988.385128617286682, 334.0, 1772.0, 334.0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 3 ],
					"midpoints" : [ 54.635141134262085, 629.729737758636475, 902.817570567131042, 629.729737758636475, 902.817570567131042, 334.0, 1751.0, 334.0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 7 ],
					"midpoints" : [ 129.770262241363525, 750.270222187042236, 961.385131120681763, 750.270222187042236, 961.385131120681763, 334.0, 1793.0, 334.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 1884.5, 48.0, 1884.5, 48.0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"midpoints" : [ 144.542736411094666, 39.0, 144.542736411094666, 39.0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 15 ],
					"midpoints" : [ 1853.666666666666742, 519.0, 1880.5, 519.0 ],
					"source" : [ "obj-50", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 14 ],
					"midpoints" : [ 1844.722222222222172, 519.0, 1855.766666666666652, 519.0 ],
					"source" : [ "obj-50", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 13 ],
					"midpoints" : [ 1835.777777777777828, 519.0, 1831.033333333333303, 519.0 ],
					"source" : [ "obj-50", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 12 ],
					"midpoints" : [ 1826.833333333333258, 513.0, 1809.0, 513.0, 1809.0, 519.0, 1806.299999999999955, 519.0 ],
					"source" : [ "obj-50", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 11 ],
					"midpoints" : [ 1817.888888888888914, 513.0, 1782.0, 513.0, 1782.0, 519.0, 1781.566666666666606, 519.0 ],
					"source" : [ "obj-50", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 10 ],
					"midpoints" : [ 1808.944444444444343, 513.0, 1758.0, 513.0, 1758.0, 519.0, 1756.833333333333485, 519.0 ],
					"source" : [ "obj-50", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 9 ],
					"midpoints" : [ 1800.0, 513.0, 1734.0, 513.0, 1734.0, 519.0, 1732.099999999999909, 519.0 ],
					"source" : [ "obj-50", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 8 ],
					"midpoints" : [ 1791.055555555555657, 513.0, 1710.0, 513.0, 1710.0, 519.0, 1707.366666666666788, 519.0 ],
					"source" : [ "obj-50", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 7 ],
					"midpoints" : [ 1782.111111111111086, 513.0, 1683.0, 513.0, 1683.0, 519.0, 1682.633333333333212, 519.0 ],
					"source" : [ "obj-50", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 6 ],
					"midpoints" : [ 1773.166666666666742, 513.0, 1659.0, 513.0, 1659.0, 519.0, 1657.900000000000091, 519.0 ],
					"source" : [ "obj-50", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 5 ],
					"midpoints" : [ 1764.222222222222172, 513.0, 1635.0, 513.0, 1635.0, 519.0, 1633.166666666666742, 519.0 ],
					"source" : [ "obj-50", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 4 ],
					"midpoints" : [ 1755.277777777777828, 513.0, 1611.0, 513.0, 1611.0, 519.0, 1608.433333333333394, 519.0 ],
					"source" : [ "obj-50", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 3 ],
					"midpoints" : [ 1746.333333333333258, 513.0, 1584.0, 513.0, 1584.0, 519.0, 1583.700000000000045, 519.0 ],
					"source" : [ "obj-50", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 2 ],
					"midpoints" : [ 1737.388888888888914, 513.0, 1560.0, 513.0, 1560.0, 519.0, 1558.966666666666697, 519.0 ],
					"source" : [ "obj-50", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 1 ],
					"midpoints" : [ 1728.444444444444343, 513.0, 1536.0, 513.0, 1536.0, 519.0, 1534.233333333333348, 519.0 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"midpoints" : [ 1719.5, 513.0, 1512.0, 513.0, 1512.0, 519.0, 1509.5, 519.0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 15 ],
					"midpoints" : [ 1389.5, 780.0, 1397.9375, 780.0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 15 ],
					"midpoints" : [ 1400.0, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 819.0, 1425.0, 819.0, 1425.0, 813.0, 1415.5, 813.0 ],
					"source" : [ "obj-51", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 15 ],
					"midpoints" : [ 1410.5, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 834.0, 1431.5, 834.0 ],
					"source" : [ "obj-51", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 15 ],
					"midpoints" : [ 1421.0, 780.0, 1443.0, 780.0, 1443.0, 774.0, 1500.0, 774.0, 1500.0, 864.0, 1445.5, 864.0 ],
					"source" : [ "obj-51", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 14 ],
					"midpoints" : [ 1314.5, 780.0, 1305.375, 780.0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 14 ],
					"midpoints" : [ 1325.0, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 819.0, 1425.0, 819.0, 1425.0, 813.0, 1322.766666666666652, 813.0 ],
					"source" : [ "obj-52", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 14 ],
					"midpoints" : [ 1335.5, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 834.0, 1425.0, 834.0, 1425.0, 843.0, 1338.766666666666652, 843.0 ],
					"source" : [ "obj-52", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 14 ],
					"midpoints" : [ 1346.0, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 864.0, 1443.0, 864.0, 1443.0, 873.0, 1352.766666666666652, 873.0 ],
					"source" : [ "obj-52", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 13 ],
					"midpoints" : [ 1224.5, 780.0, 1212.8125, 780.0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 13 ],
					"midpoints" : [ 1235.0, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 819.0, 1425.0, 819.0, 1425.0, 813.0, 1230.033333333333303, 813.0 ],
					"source" : [ "obj-53", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 13 ],
					"midpoints" : [ 1245.5, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 834.0, 1425.0, 834.0, 1425.0, 840.0, 1246.033333333333303, 840.0 ],
					"source" : [ "obj-53", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 13 ],
					"midpoints" : [ 1256.0, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 864.0, 1443.0, 864.0, 1443.0, 873.0, 1260.033333333333303, 873.0 ],
					"source" : [ "obj-53", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 12 ],
					"midpoints" : [ 1120.5, 780.0, 1120.25, 780.0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 12 ],
					"midpoints" : [ 1131.0, 810.0, 1137.299999999999955, 810.0 ],
					"source" : [ "obj-54", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 12 ],
					"midpoints" : [ 1141.5, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 834.0, 1425.0, 834.0, 1425.0, 843.0, 1153.299999999999955, 843.0 ],
					"source" : [ "obj-54", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 12 ],
					"midpoints" : [ 1152.0, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 864.0, 1443.0, 864.0, 1443.0, 870.0, 1167.299999999999955, 870.0 ],
					"source" : [ "obj-54", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 10 ],
					"midpoints" : [ 924.5, 780.0, 935.125, 780.0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 10 ],
					"midpoints" : [ 935.0, 810.0, 951.833333333333371, 810.0 ],
					"source" : [ "obj-55", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 10 ],
					"midpoints" : [ 945.5, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 834.0, 1425.0, 834.0, 1425.0, 843.0, 967.833333333333371, 843.0 ],
					"source" : [ "obj-55", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 10 ],
					"midpoints" : [ 956.0, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 864.0, 1443.0, 864.0, 1443.0, 870.0, 981.833333333333371, 870.0 ],
					"source" : [ "obj-55", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 9 ],
					"midpoints" : [ 834.5, 780.0, 842.5625, 780.0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 9 ],
					"midpoints" : [ 845.0, 813.0, 859.100000000000023, 813.0 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 9 ],
					"midpoints" : [ 855.5, 840.0, 875.100000000000023, 840.0 ],
					"source" : [ "obj-56", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 9 ],
					"midpoints" : [ 866.0, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 864.0, 1443.0, 864.0, 1443.0, 873.0, 889.100000000000023, 873.0 ],
					"source" : [ "obj-56", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 8 ],
					"midpoints" : [ 744.5, 780.0, 750.0, 780.0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 8 ],
					"midpoints" : [ 755.0, 810.0, 766.366666666666674, 810.0 ],
					"source" : [ "obj-57", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 8 ],
					"midpoints" : [ 765.5, 843.0, 782.366666666666674, 843.0 ],
					"source" : [ "obj-57", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 8 ],
					"midpoints" : [ 776.0, 780.0, 1440.0, 780.0, 1440.0, 774.0, 1500.0, 774.0, 1500.0, 864.0, 1443.0, 864.0, 1443.0, 870.0, 796.366666666666674, 870.0 ],
					"source" : [ "obj-57", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 7 ],
					"midpoints" : [ 654.5, 783.0, 657.4375, 783.0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 7 ],
					"midpoints" : [ 665.0, 813.0, 673.633333333333326, 813.0 ],
					"source" : [ "obj-58", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 7 ],
					"midpoints" : [ 675.5, 840.0, 689.633333333333326, 840.0 ],
					"source" : [ "obj-58", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 7 ],
					"midpoints" : [ 686.0, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 873.0, 703.633333333333326, 873.0 ],
					"source" : [ "obj-58", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 6 ],
					"midpoints" : [ 564.5, 780.0, 564.875, 780.0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 6 ],
					"midpoints" : [ 575.0, 810.0, 580.899999999999977, 810.0 ],
					"source" : [ "obj-59", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 6 ],
					"midpoints" : [ 585.5, 843.0, 596.899999999999977, 843.0 ],
					"source" : [ "obj-59", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 6 ],
					"midpoints" : [ 596.0, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 873.0, 610.899999999999977, 873.0 ],
					"source" : [ "obj-59", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 1 ],
					"midpoints" : [ 100.5, 783.0, 102.0625, 783.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 1 ],
					"midpoints" : [ 111.0, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 117.233333333333334, 810.0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 1 ],
					"midpoints" : [ 121.5, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 843.0, 133.233333333333348, 843.0 ],
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 1 ],
					"midpoints" : [ 132.0, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 873.0, 147.233333333333348, 873.0 ],
					"source" : [ "obj-6", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 5 ],
					"midpoints" : [ 474.5, 780.0, 472.3125, 780.0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 5 ],
					"midpoints" : [ 485.0, 813.0, 488.166666666666686, 813.0 ],
					"source" : [ "obj-60", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 5 ],
					"midpoints" : [ 495.5, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 843.0, 504.166666666666686, 843.0 ],
					"source" : [ "obj-60", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 5 ],
					"midpoints" : [ 506.0, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 873.0, 518.166666666666742, 873.0 ],
					"source" : [ "obj-60", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 4 ],
					"midpoints" : [ 369.5, 780.0, 379.75, 780.0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 4 ],
					"midpoints" : [ 380.0, 813.0, 395.433333333333337, 813.0 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 4 ],
					"midpoints" : [ 390.5, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 843.0, 411.433333333333337, 843.0 ],
					"source" : [ "obj-61", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 4 ],
					"midpoints" : [ 401.0, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 873.0, 425.433333333333337, 873.0 ],
					"source" : [ "obj-61", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 3 ],
					"midpoints" : [ 280.5, 780.0, 287.1875, 780.0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 3 ],
					"midpoints" : [ 291.0, 813.0, 302.699999999999989, 813.0 ],
					"source" : [ "obj-62", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 3 ],
					"midpoints" : [ 301.5, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 843.0, 318.699999999999989, 843.0 ],
					"source" : [ "obj-62", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 3 ],
					"midpoints" : [ 312.0, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 873.0, 332.699999999999989, 873.0 ],
					"source" : [ "obj-62", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 32 ],
					"midpoints" : [ 1884.5, 330.0, 2055.5, 330.0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"midpoints" : [ 1839.5, 54.0, 1843.5, 54.0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 15 ],
					"midpoints" : [ 1643.666666666666742, 519.0, 1880.5, 519.0 ],
					"source" : [ "obj-65", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 14 ],
					"midpoints" : [ 1634.722222222222172, 519.0, 1855.766666666666652, 519.0 ],
					"source" : [ "obj-65", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 13 ],
					"midpoints" : [ 1625.777777777777828, 519.0, 1831.033333333333303, 519.0 ],
					"source" : [ "obj-65", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 12 ],
					"midpoints" : [ 1616.833333333333258, 519.0, 1806.299999999999955, 519.0 ],
					"source" : [ "obj-65", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 11 ],
					"midpoints" : [ 1607.888888888888914, 519.0, 1781.566666666666606, 519.0 ],
					"source" : [ "obj-65", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 10 ],
					"midpoints" : [ 1598.944444444444343, 519.0, 1756.833333333333485, 519.0 ],
					"source" : [ "obj-65", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 9 ],
					"midpoints" : [ 1590.0, 519.0, 1732.099999999999909, 519.0 ],
					"source" : [ "obj-65", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 8 ],
					"midpoints" : [ 1581.055555555555657, 519.0, 1707.366666666666788, 519.0 ],
					"source" : [ "obj-65", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 7 ],
					"midpoints" : [ 1572.111111111111086, 519.0, 1682.633333333333212, 519.0 ],
					"source" : [ "obj-65", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 6 ],
					"midpoints" : [ 1563.166666666666742, 519.0, 1657.900000000000091, 519.0 ],
					"source" : [ "obj-65", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 5 ],
					"midpoints" : [ 1554.222222222222172, 519.0, 1633.166666666666742, 519.0 ],
					"source" : [ "obj-65", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 4 ],
					"midpoints" : [ 1545.277777777777828, 519.0, 1608.433333333333394, 519.0 ],
					"source" : [ "obj-65", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 3 ],
					"midpoints" : [ 1536.333333333333258, 519.0, 1583.700000000000045, 519.0 ],
					"source" : [ "obj-65", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 2 ],
					"midpoints" : [ 1527.388888888888914, 519.0, 1558.966666666666697, 519.0 ],
					"source" : [ "obj-65", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 1 ],
					"midpoints" : [ 1518.444444444444343, 519.0, 1534.233333333333348, 519.0 ],
					"source" : [ "obj-65", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"midpoints" : [ 1509.5, 513.0, 1509.5, 513.0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"midpoints" : [ 1794.5, 48.0, 1794.5, 48.0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"midpoints" : [ 1794.5, 84.0, 1794.5, 84.0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 55.5, 219.0, 54.5, 219.0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 130.5, 219.0, 54.5, 219.0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 9.5, 369.0, 69.0, 369.0, 69.0, 279.0, 360.0, 279.0, 360.0, 0.0, 372.0, 0.0, 372.0, -3.0, 750.0, -3.0, 750.0, 0.0, 870.0, 0.0, 870.0, 72.0, 885.0, 72.0, 885.0, 123.0, 930.0, 123.0, 930.0, 192.0, 954.5, 192.0 ],
					"order" : 8,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"midpoints" : [ 9.5, 369.0, 69.0, 369.0, 69.0, 279.0, 360.0, 279.0, 360.0, 0.0, 372.0, 0.0, 372.0, -3.0, 750.0, -3.0, 750.0, 0.0, 780.0, 0.0, 780.0, 192.0, 804.5, 192.0 ],
					"order" : 14,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"midpoints" : [ 9.5, 369.0, 69.0, 369.0, 69.0, 279.0, 360.0, 279.0, 360.0, 0.0, 372.0, 0.0, 372.0, -3.0, 750.0, -3.0, 750.0, 0.0, 870.0, 0.0, 870.0, 66.0, 954.5, 66.0 ],
					"order" : 9,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"midpoints" : [ 9.5, 369.0, 69.0, 369.0, 69.0, 279.0, 360.0, 279.0, 360.0, 0.0, 372.0, 0.0, 372.0, -3.0, 750.0, -3.0, 750.0, 0.0, 804.5, 0.0 ],
					"order" : 15,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 9.5, 369.0, 69.0, 369.0, 69.0, 255.0, 132.0, 255.0, 132.0, 246.0, 177.0, 246.0, 177.0, 228.0, 195.0, 228.0, 195.0, 135.0, 207.0, 135.0, 207.0, 132.0, 220.5, 132.0 ],
					"order" : 24,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"midpoints" : [ 9.5, 369.0, 69.0, 369.0, 69.0, 279.0, 480.0, 279.0, 480.0, 252.0, 504.5, 252.0 ],
					"order" : 20,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"midpoints" : [ 9.5, 369.0, 69.0, 369.0, 69.0, 279.0, 375.0, 279.0, 375.0, 120.0, 480.0, 120.0, 480.0, 135.0, 597.0, 135.0, 597.0, 132.0, 610.5, 132.0 ],
					"order" : 16,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"midpoints" : [ 9.5, 369.0, 69.0, 369.0, 69.0, 279.0, 375.0, 279.0, 375.0, 129.0, 399.5, 129.0 ],
					"order" : 23,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"midpoints" : [ 9.5, 369.0, 69.0, 369.0, 69.0, 279.0, 375.0, 279.0, 375.0, 9.0, 504.5, 9.0 ],
					"order" : 21,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"midpoints" : [ 9.5, 377.0, 669.5, 377.0, 669.5, 185.0, 1329.5, 185.0 ],
					"order" : 2,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"midpoints" : [ 9.5, 377.0, 594.5, 377.0, 594.5, 185.0, 1179.5, 185.0 ],
					"order" : 6,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"midpoints" : [ 9.5, 377.0, 669.5, 377.0, 669.5, 64.0, 1329.5, 64.0 ],
					"order" : 3,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-159", 0 ],
					"midpoints" : [ 9.5, 377.0, 594.5, 377.0, 594.5, 64.0, 1179.5, 64.0 ],
					"order" : 7,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 9.5, 369.0, 69.0, 369.0, 69.0, 255.0, 132.0, 255.0, 132.0, 252.0, 144.542736411094666, 252.0 ],
					"order" : 26,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"midpoints" : [ 9.5, 467.935898423194885, 1329.158133029937744, 467.935898423194885 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"midpoints" : [ 9.5, 468.042737931013107, 1178.730781078338623, 468.042737931013107 ],
					"order" : 4,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"midpoints" : [ 9.5, 407.679487556219101, 1329.158133029937744, 407.679487556219101 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"midpoints" : [ 9.5, 407.786327064037323, 1178.730781078338623, 407.786327064037323 ],
					"order" : 5,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"midpoints" : [ 9.5, 369.0, 372.0, 369.0, 372.0, 375.0, 387.0, 375.0, 387.0, 495.0, 492.0, 495.0, 492.0, 507.0, 507.0, 507.0, 507.0, 555.0, 522.0, 555.0, 522.0, 615.0, 510.0, 615.0, 510.0, 621.0, 504.5, 621.0 ],
					"order" : 18,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-196", 0 ],
					"midpoints" : [ 9.5, 369.0, 372.0, 369.0, 372.0, 375.0, 387.0, 375.0, 387.0, 495.0, 492.0, 495.0, 492.0, 504.0, 595.5, 504.0 ],
					"order" : 17,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"midpoints" : [ 9.5, 369.0, 372.0, 369.0, 372.0, 375.0, 387.0, 375.0, 387.0, 495.0, 399.5, 495.0 ],
					"order" : 22,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-199", 0 ],
					"midpoints" : [ 9.5, 369.0, 372.0, 369.0, 372.0, 375.0, 504.5, 375.0 ],
					"order" : 19,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 0 ],
					"midpoints" : [ 9.5, 369.0, 0.0, 369.0, 0.0, 372.0, -3.0, 372.0, -3.0, 750.0, 759.0, 750.0, 759.0, 690.0, 930.0, 690.0, 930.0, 567.0, 953.5, 567.0 ],
					"order" : 10,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-217", 0 ],
					"midpoints" : [ 9.5, 369.0, 0.0, 369.0, 0.0, 372.0, -3.0, 372.0, -3.0, 750.0, 759.0, 750.0, 759.0, 567.0, 804.5, 567.0 ],
					"order" : 12,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-218", 0 ],
					"midpoints" : [ 9.5, 369.0, 0.0, 369.0, 0.0, 372.0, -3.0, 372.0, -3.0, 750.0, 759.0, 750.0, 759.0, 690.0, 930.0, 690.0, 930.0, 447.0, 953.5, 447.0 ],
					"order" : 11,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-220", 0 ],
					"midpoints" : [ 9.5, 369.0, 0.0, 369.0, 0.0, 372.0, -3.0, 372.0, -3.0, 750.0, 759.0, 750.0, 759.0, 444.0, 804.5, 444.0 ],
					"order" : 13,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-236", 0 ],
					"midpoints" : [ 9.5, 369.0, 102.0, 369.0, 102.0, 495.0, 30.0, 495.0, 30.0, 630.0, 114.0, 630.0, 114.0, 624.0, 129.236840963363647, 624.0 ],
					"order" : 28,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-237", 0 ],
					"midpoints" : [ 9.5, 369.0, 102.0, 369.0, 102.0, 501.0, 205.226497709751129, 501.0 ],
					"order" : 25,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-238", 0 ],
					"midpoints" : [ 9.5, 369.0, 102.0, 369.0, 102.0, 495.0, 54.799145758152008, 495.0 ],
					"order" : 31,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-241", 0 ],
					"midpoints" : [ 9.5, 369.0, 120.0, 369.0, 120.0, 375.0, 129.236840963363647, 375.0 ],
					"order" : 29,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 9.5, 369.0, 69.0, 369.0, 69.0, 255.0, 15.0, 255.0, 15.0, 33.0, 120.0, 33.0, 120.0, 9.0, 144.542736411094666, 9.0 ],
					"order" : 27,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 9.5, 369.0, 60.0, 369.0, 60.0, 255.0, 30.0, 255.0, 30.0, 129.0, 55.5, 129.0 ],
					"order" : 30,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 35 ],
					"midpoints" : [ 1841.5, 330.0, 2087.0, 330.0 ],
					"source" : [ "obj-70", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 34 ],
					"midpoints" : [ 1794.5, 330.0, 2076.5, 330.0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 30 ],
					"midpoints" : [ 1719.5, 330.0, 2034.5, 330.0 ],
					"order" : 0,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 28 ],
					"midpoints" : [ 1719.5, 330.0, 2013.5, 330.0 ],
					"order" : 1,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 26 ],
					"midpoints" : [ 1719.5, 330.0, 1992.5, 330.0 ],
					"order" : 2,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 24 ],
					"midpoints" : [ 1719.5, 330.0, 1971.5, 330.0 ],
					"order" : 3,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 22 ],
					"midpoints" : [ 1719.5, 330.0, 1950.5, 330.0 ],
					"order" : 4,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 20 ],
					"midpoints" : [ 1719.5, 330.0, 1929.5, 330.0 ],
					"order" : 5,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 18 ],
					"midpoints" : [ 1719.5, 330.0, 1908.5, 330.0 ],
					"order" : 6,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 16 ],
					"midpoints" : [ 1719.5, 330.0, 1887.5, 330.0 ],
					"order" : 7,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 14 ],
					"midpoints" : [ 1719.5, 330.0, 1866.5, 330.0 ],
					"order" : 8,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 12 ],
					"midpoints" : [ 1719.5, 330.0, 1845.5, 330.0 ],
					"order" : 9,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 10 ],
					"midpoints" : [ 1719.5, 330.0, 1824.5, 330.0 ],
					"order" : 10,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 8 ],
					"midpoints" : [ 1719.5, 330.0, 1803.5, 330.0 ],
					"order" : 11,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 6 ],
					"midpoints" : [ 1719.5, 330.0, 1782.5, 330.0 ],
					"order" : 12,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 4 ],
					"midpoints" : [ 1719.5, 330.0, 1761.5, 330.0 ],
					"order" : 13,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 2 ],
					"midpoints" : [ 1719.5, 330.0, 1740.5, 330.0 ],
					"order" : 14,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"midpoints" : [ 1719.5, 54.0, 1719.5, 54.0 ],
					"order" : 15,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 1719.5, 24.0, 1719.5, 24.0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"midpoints" : [ 1736.222222222222172, 744.0, 1500.0, 744.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 1046.0, 753.0 ],
					"source" : [ "obj-76", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 1 ],
					"midpoints" : [ 1509.5, 663.0, 1500.0, 663.0, 1500.0, 909.0, 0.0, 909.0, 0.0, 810.0, -3.0, 810.0, -3.0, 783.0, 51.0, 783.0, 51.0, 753.0, 41.0, 753.0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"midpoints" : [ 1818.666666666666742, 744.0, 1500.0, 744.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 1421.0, 753.0 ],
					"source" : [ "obj-76", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"midpoints" : [ 1798.055555555555657, 744.0, 1500.0, 744.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 1346.0, 753.0 ],
					"source" : [ "obj-76", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
					"midpoints" : [ 1777.444444444444343, 744.0, 1500.0, 744.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 1256.0, 753.0 ],
					"source" : [ "obj-76", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 1 ],
					"midpoints" : [ 1756.833333333333485, 744.0, 1500.0, 744.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 1152.0, 753.0 ],
					"source" : [ "obj-76", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"midpoints" : [ 1715.611111111111086, 744.0, 1500.0, 744.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 956.0, 753.0 ],
					"source" : [ "obj-76", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 1695.0, 744.0, 1500.0, 744.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 866.0, 753.0 ],
					"source" : [ "obj-76", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 1 ],
					"midpoints" : [ 1674.388888888888914, 744.0, 1500.0, 744.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 776.0, 753.0 ],
					"source" : [ "obj-76", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 1 ],
					"midpoints" : [ 1653.777777777777828, 744.0, 1500.0, 744.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 686.0, 753.0 ],
					"source" : [ "obj-76", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 1 ],
					"midpoints" : [ 1633.166666666666742, 744.0, 1500.0, 744.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 596.0, 753.0 ],
					"source" : [ "obj-76", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"midpoints" : [ 1530.111111111111086, 708.5, 132.0, 708.5 ],
					"source" : [ "obj-76", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"midpoints" : [ 1612.555555555555657, 744.0, 1500.0, 744.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 506.0, 753.0 ],
					"source" : [ "obj-76", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 1 ],
					"midpoints" : [ 1591.944444444444343, 744.0, 1500.0, 744.0, 1500.0, 762.0, 1431.0, 762.0, 1431.0, 753.0, 401.0, 753.0 ],
					"source" : [ "obj-76", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 1 ],
					"midpoints" : [ 1571.333333333333258, 708.5, 312.0, 708.5 ],
					"source" : [ "obj-76", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"midpoints" : [ 1550.722222222222172, 708.5, 221.0, 708.5 ],
					"source" : [ "obj-76", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 295.5, 219.0, 219.5, 219.0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 220.5, 219.0, 219.5, 219.0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-261", 2 ],
					"midpoints" : [ 189.5, 783.0, 194.625, 783.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 2 ],
					"midpoints" : [ 200.0, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 209.966666666666669, 810.0 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-271", 2 ],
					"midpoints" : [ 210.5, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 843.0, 225.966666666666669, 843.0 ],
					"source" : [ "obj-8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-272", 2 ],
					"midpoints" : [ 221.0, 780.0, 0.0, 780.0, 0.0, 783.0, -3.0, 783.0, -3.0, 810.0, 0.0, 810.0, 0.0, 873.0, 239.966666666666669, 873.0 ],
					"source" : [ "obj-8", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"midpoints" : [ 280.5, 189.0, 295.5, 189.0 ],
					"source" : [ "obj-80", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"midpoints" : [ 220.5, 189.0, 220.5, 189.0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 220.5, 99.0, 144.5, 99.0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 144.542736411094666, 99.0, 144.5, 99.0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"midpoints" : [ 204.542736411094666, 69.0, 220.5, 69.0 ],
					"source" : [ "obj-87", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"midpoints" : [ 144.542736411094666, 69.0, 144.542736411094666, 69.0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 220.5, 339.0, 144.5, 339.0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 55.5, 159.0, 55.5, 159.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 144.542736411094666, 339.0, 144.5, 339.0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"midpoints" : [ 204.542736411094666, 309.0, 220.5, 309.0 ],
					"source" : [ "obj-91", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"midpoints" : [ 144.542736411094666, 309.0, 144.542736411094666, 309.0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 1028.5, 279.0, 954.5, 279.0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 954.5, 279.0, 954.5, 279.0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"midpoints" : [ 1014.5, 249.0, 1028.5, 249.0 ],
					"source" : [ "obj-97", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"midpoints" : [ 954.5, 249.0, 954.5, 249.0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 878.5, 159.0, 804.5, 159.0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-11" : [ "In / Out[1]", "In / Out", 0 ],
			"obj-12" : [ "live.gain~[3]", "live.gain~", 0 ],
			"obj-14" : [ "live.gain~[4]", "live.gain~", 0 ],
			"obj-15" : [ "live.gain~[5]", "live.gain~", 0 ],
			"obj-16" : [ "live.gain~[6]", "live.gain~", 0 ],
			"obj-19" : [ "live.gain~[7]", "live.gain~", 0 ],
			"obj-20" : [ "live.gain~[8]", "live.gain~", 0 ],
			"obj-21" : [ "live.gain~[9]", "live.gain~", 0 ],
			"obj-22" : [ "live.gain~[10]", "live.gain~", 0 ],
			"obj-23" : [ "live.gain~[11]", "live.gain~", 0 ],
			"obj-24" : [ "live.gain~[12]", "live.gain~", 0 ],
			"obj-25" : [ "live.gain~[13]", "live.gain~", 0 ],
			"obj-26" : [ "live.gain~[14]", "live.gain~", 0 ],
			"obj-269" : [ "radiogroup[1]", "radiogroup[1]", 0 ],
			"obj-27" : [ "live.gain~[15]", "live.gain~", 0 ],
			"obj-28" : [ "live.gain~[16]", "live.gain~", 0 ],
			"obj-29" : [ "live.gain~[17]", "live.gain~", 0 ],
			"obj-3" : [ "radiogroup", "radiogroup", 0 ],
			"obj-30" : [ "live.gain~[18]", "live.gain~", 0 ],
			"obj-31" : [ "live.gain~[19]", "live.gain~", 0 ],
			"obj-32" : [ "live.gain~[20]", "live.gain~", 0 ],
			"obj-33" : [ "live.gain~[21]", "live.gain~", 0 ],
			"obj-34" : [ "live.gain~[22]", "live.gain~", 0 ],
			"obj-35" : [ "live.gain~[23]", "live.gain~", 0 ],
			"obj-36" : [ "live.gain~[24]", "live.gain~", 0 ],
			"obj-37" : [ "live.gain~[25]", "live.gain~", 0 ],
			"obj-38" : [ "Residual[1]", "Residual", 0 ],
			"obj-39" : [ "live.gain~[26]", "live.gain~", 0 ],
			"obj-40" : [ "live.gain~[27]", "live.gain~", 0 ],
			"obj-41" : [ "live.gain~[28]", "live.gain~", 0 ],
			"obj-43" : [ "live.gain~[29]", "live.gain~", 0 ],
			"obj-44" : [ "live.gain~[30]", "live.gain~", 0 ],
			"obj-45" : [ "live.gain~[31]", "live.gain~", 0 ],
			"obj-46" : [ "live.gain~[32]", "live.gain~", 0 ],
			"obj-47" : [ "live.gain~[33]", "live.gain~", 0 ],
			"obj-48" : [ "live.gain~[34]", "live.gain~", 0 ],
			"obj-49" : [ "Halo[1]", "Halo", 0 ],
			"obj-50" : [ "Wet Gain", "Wet Gain", 0 ],
			"obj-64" : [ "Frequency 2[1]", "Freq 2", 0 ],
			"obj-65" : [ "Dry Gain", "Dry Gain", 0 ],
			"obj-66" : [ "Frequency 1[1]", "Freq 1", 0 ],
			"obj-76" : [ "Dry Gain[1]", "Dry Gain", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "SloperConvolver.maxpat",
				"bootpath" : "~/Documents/Max 8/Library",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sharedmem~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "vs.minmax.maxpat",
				"bootpath" : "~/Documents/Max 8/Library",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
