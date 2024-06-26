/// Packages import
library;
import 'package:flutter/material.dart';

/// DataGrid import
// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// Local import
import '../../../model/sample_view.dart';
import '../datagridsource/product_datagridsource.dart';

/// Renders custom sorting data grid sample
class CustomSortingDataGrid extends SampleView {
  /// Creates custom sorting data grid sample
  const CustomSortingDataGrid({super.key});

  @override
  _CustomSortingDataGridState createState() => _CustomSortingDataGridState();
}

class _CustomSortingDataGridState extends SampleViewState {
  /// DataGridSource required for SfDataGrid to obtain the row data.
  late ProductDataGridSource _customSortingDataGridSource;

  /// Collection of GridColumn and it required for SfDataGrid
  late List<GridColumn> columns;

  late bool isWebOrDesktop;

  @override
  void initState() {
    super.initState();
    isWebOrDesktop = model.isWeb || model.isDesktop;
    columns = getColumns();
    _customSortingDataGridSource =
        ProductDataGridSource('Custom Sorting', productDataCount: 20);

    /// Programmaticaly sorting based on string length for 'customer name' GirdColumn

    _customSortingDataGridSource.sortedColumns.add(const SortColumnDetails(
        name: 'name', sortDirection: DataGridSortDirection.ascending));
    _customSortingDataGridSource.sort();
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      source: _customSortingDataGridSource,
      columns: columns,
      allowSorting: true,
      columnWidthMode: isWebOrDesktop
          ? (isWebOrDesktop && model.isMobileResolution)
              ? ColumnWidthMode.none
              : ColumnWidthMode.fill
          : ColumnWidthMode.none,
    );
  }

  List<GridColumn> getColumns() {
    return <GridColumn>[
      GridColumn(
          columnName: 'id',
          label: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.centerRight,
            child: const Text(
              'Order ID',
              overflow: TextOverflow.ellipsis,
            ),
          )),
      GridColumn(
          columnName: 'productId',
          label: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.centerRight,
            child: const Text(
              'Product ID',
              overflow: TextOverflow.ellipsis,
            ),
          )),
      GridColumn(
          columnName: 'name',
          width: isWebOrDesktop ? 170 : 150,
          label: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(8),
              child: const Text('Customer Name'))),
      GridColumn(
          columnName: 'product',
          label: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Product',
              overflow: TextOverflow.ellipsis,
            ),
          )),
      GridColumn(
          columnName: 'orderDate',
          label: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.centerRight,
            child: const Text(
              'Order Date',
              overflow: TextOverflow.ellipsis,
            ),
          )),
      GridColumn(
          columnName: 'quantity',
          label: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.centerRight,
            child: const Text(
              'Quantity',
              overflow: TextOverflow.ellipsis,
            ),
          )),
      GridColumn(
          columnName: 'city',
          label: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(8),
            child: const Text(
              'City',
              overflow: TextOverflow.ellipsis,
            ),
          )),
      GridColumn(
          columnName: 'unitPrice',
          label: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.centerRight,
            child: const Text(
              'Unit Price',
              overflow: TextOverflow.ellipsis,
            ),
          )),
    ];
  }
}
