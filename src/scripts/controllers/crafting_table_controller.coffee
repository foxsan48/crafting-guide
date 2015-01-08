###
Crafting Guide - crafting_table_controller.coffee

Copyright (c) 2014-2015 by Redwood Labs
All rights reserved.
###

BaseController = require './base_controller'
CraftingGridController = require './crafting_grid_controller'

########################################################################################################################

module.exports = class CraftingTableController extends BaseController

    constructor: (options={})->
        if not options.model? then throw new Error 'options.model is required'
        options.templateName = 'crafting_table'
        super options

    # BaseController Overrides #####################################################################

    onDidRender: ->
        @gridController = @addChild CraftingGridController, '.view__crafting_grid', model:@model.grid

        @$nextButton = @$('button[name="next"]')
        @$prevButton = @$('button[name="prev"]')
        super
