# datatables-rails-bs3

This gem packages the jQuery [DataTables](http://datatables.net/) plugin for easy use with the Rails 3.1+ asset pipleine.

It provides all the basic DataTables files, and a few of the extras.

## Twitter Bootstrap 3 Installation

1. Add to your Gemfile:

        gem 'datatables-rails-bs3'

1. Install the gem:

        bundle install

1. Add the JavaScript to `application.js`:

        //= require dataTables/jquery.dataTables
        //= require dataTables/jquery.dataTables.bootstrap

1. Add the stylesheets to `application.css`:

        *= require dataTables/jquery.dataTables.bootstrap

1. Initialize your datatables using one of these options:

```javascript
// Default Type
$('.datatable').dataTable({
  "sPaginationType": "bs_normal"
});
```
```javascript
// Two Buttons
$('.datatable').dataTable({
  "sPaginationType": "bs_two_button"
});
```
```javascript
// Four Buttons
$('.datatable').dataTable({
  "sPaginationType": "bs_four_button"
});
```
```javascript
// Full
$('.datatable').dataTable({
  "sPaginationType": "bs_full"
});
```

## Plugins

Only a few plugins are currently available

* api
    * fnReloadAjax
    * fnGetColumnData
    * fnFilterOnReturn
    * fnSetFilteringDelay
* sorting
    * numbersHtml
* typeDetection
    * numberHtml

These files can be found in the [assets directory][assets].

## Extras

Only the official extras are available:

* AutoFill
* ColReorder
* ColVis
* FixedColumns
* FixedHeader
* KeyTable
* Scroller
* TableTools

To add an extra into your application, add its JS file to `application.js` using the following pattern:

    //= require dataTables/extras/[ExtraName]

Additionally, you may need to add any associated CSS files. For instance the TableTools extra requires
you to add the following two lines to your `application.css` file:

    *= require dataTables/extras/TableTools
    *= require dataTables/extras/TableTools_JUI

Make sure to also add it's initialization as described on [datatables extras' site][datatables_extras]





[assets]: https://github.com/DevanB/jquery-datatables-rails/tree/master/vendor/assets/javascripts/dataTables
[datatables_extras]: http://datatables.net/extras/