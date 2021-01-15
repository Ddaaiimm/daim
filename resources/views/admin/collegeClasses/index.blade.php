@extends('layouts.admin')
@section('content')
@can('college_class_create')
    <div style="margin-bottom: 10px;" class="row">
        <div class="col-lg-12">
            <a class="btn btn-success" href="{{ route("admin.college-classes.create") }}">
                {{ trans('global.add') }} {{ trans('cruds.collegeClass.title_singular') }}
            </a>
        </div>
    </div>
@endcan
<div class="card">
    <div class="card-header">
        {{ trans('cruds.collegeClass.title_singular') }} {{ trans('global.list') }}
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class=" table table-bordered table-striped table-hover datatable datatable-CollegeClass">
                <thead>
                    <tr>
                        <th width="10">

                        </th>
                        <th>
                            {{ trans('cruds.collegeClass.fields.id') }}
                        </th>
                        <th>
                            {{ trans('cruds.collegeClass.fields.name') }}
                        </th>
                        <th>
                            Schedule
                        </th>
                        <th>
                        {{ trans('cruds.collegeClass.fields.action') }} &nbsp;
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($collegeClasses as $key => $collegeClass)
                        <tr data-entry-id="{{ $collegeClass->id }}">
                            <td>

                            </td>
                            <td>
                                {{ $collegeClass->id ?? '' }}
                            </td>
                            <td>
                                {{ $collegeClass->name ?? '' }}
                            </td>
                            <td>
                                <a href="{{ route('admin.calendar.index') }}?class_id={{ $collegeClass->id }}">View Schedule</a>
                            </td>
                            <td>
                                @can('college_class_show')
                                    <a class="btn btn-xs btn-primary" href="{{ route('admin.college-classes.show', $collegeClass->id) }}">
                                        {{ trans('global.view') }}
                                    </a>
                                @endcan

                                @can('college_class_edit')
                                    <a class="btn btn-xs btn-info" href="{{ route('admin.college-classes.edit', $collegeClass->id) }}">
                                        {{ trans('global.edit') }}
                                    </a>
                                @endcan

                                @can('college_class_delete')
                                    <form action="{{ route('admin.college-classes.destroy', $collegeClass->id) }}" method="POST" onsubmit="return confirm('{{ trans('global.areYouSure') }}');" style="display: inline-block;">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                        <input type="submit" class="btn btn-xs btn-danger" value="{{ trans('global.delete') }}">
                                    </form>
                                @endcan

                            </td>

                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>



@endsection
@section('scripts')
@parent
<script>
    $(function () {
  let dtButtons = $.extend(true, [], $.fn.dataTable.defaults.buttons)
@can('college_class_delete')
  let deleteButtonTrans = '{{ trans('global.datatables.delete') }}'
  let deleteButton = {
    text: deleteButtonTrans,
    url: "{{ route('admin.college-classes.massDestroy') }}",
    className: 'btn-danger',
    action: function (e, dt, node, config) {
      var ids = $.map(dt.rows({ selected: true }).nodes(), function (entry) {
          return $(entry).data('entry-id')
      });

      if (ids.length === 0) {
        alert('{{ trans('global.datatables.zero_selected') }}')

        return
      }

      if (confirm('{{ trans('global.areYouSure') }}')) {
        $.ajax({
          headers: {'x-csrf-token': _token},
          method: 'POST',
          url: config.url,
          data: { ids: ids, _method: 'DELETE' }})
          .done(function () { location.reload() })
      }
    }
  }
  dtButtons.push(deleteButton)
@endcan

  $.extend(true, $.fn.dataTable.defaults, {
    order: [[ 1, 'desc' ]],
    pageLength: 100,
  });
  $('.datatable-CollegeClass:not(.ajaxTable)').DataTable({ buttons: dtButtons })
    $('a[data-toggle="tab"]').on('shown.bs.tab', function(e){
        $($.fn.dataTable.tables(true)).DataTable()
            .columns.adjust();
    });
})

</script>
@endsection