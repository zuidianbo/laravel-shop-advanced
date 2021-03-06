<?php
//
//namespace App\Admin\Controllers;
//
//use App\Models\Category;
//use Encore\Admin\Controllers\AdminController;
//use Encore\Admin\Form;
//use Encore\Admin\Grid;
//use Encore\Admin\Show;
//
//class CategoriesController extends AdminController
//{
//    /**
//     * Title for current resource.
//     *
//     * @var string
//     */
//    protected $title = 'App\Models\Category';
//
//    /**
//     * Make a grid builder.
//     *
//     * @return Grid
//     */
//    protected function grid()
//    {
//        $grid = new Grid(new Category);
//
//        $grid->column('id', __('Id'));
//        $grid->column('name', __('Name'));
//        $grid->column('parent_id', __('Parent id'));
//        $grid->column('is_directory', __('Is directory'));
//        $grid->column('level', __('Level'));
//        $grid->column('path', __('Path'));
//        $grid->column('created_at', __('Created at'));
//        $grid->column('updated_at', __('Updated at'));
//
//        return $grid;
//    }
//
//    /**
//     * Make a show builder.
//     *
//     * @param mixed $id
//     * @return Show
//     */
//    protected function detail($id)
//    {
//        $show = new Show(Category::findOrFail($id));
//
//        $show->field('id', __('Id'));
//        $show->field('name', __('Name'));
//        $show->field('parent_id', __('Parent id'));
//        $show->field('is_directory', __('Is directory'));
//        $show->field('level', __('Level'));
//        $show->field('path', __('Path'));
//        $show->field('created_at', __('Created at'));
//        $show->field('updated_at', __('Updated at'));
//
//        return $show;
//    }
//
//    /**
//     * Make a form builder.
//     *
//     * @return Form
//     */
//    protected function form()
//    {
//        $form = new Form(new Category);
//
//        $form->text('name', __('Name'));
//        $form->number('parent_id', __('Parent id'));
//        $form->switch('is_directory', __('Is directory'));
//        $form->number('level', __('Level'));
//        $form->text('path', __('Path'));
//
//        return $form;
//    }
//}

namespace App\Admin\Controllers;

use App\Models\Category;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Http\Request;

class CategoriesController extends AdminController
{
    protected $title = '????????????';

    public function edit($id, Content $content)
    {
        return $content
            ->title($this->title())
            ->description($this->description['edit'] ?? trans('admin.edit'))
            ->body($this->form(true)->edit($id));
    }

    protected function grid()
    {
        $grid = new Grid(new Category);

        $grid->id('ID')->sortable();
        $grid->name('??????');
        $grid->level('??????');
        $grid->is_directory('????????????')->display(function ($value) {
            return $value ? '???' : '???';
        });
        $grid->path('????????????');
        $grid->actions(function ($actions) {
            // ????????? Laravel-Admin ?????????????????????
            $actions->disableView();
        });

        return $grid;
    }

    protected function form($isEditing = false)
    {
        $form = new Form(new Category);

        $form->text('name', '????????????')->rules('required');

        // ????????????????????????
        if ($isEditing) {
            // ?????????????????????????????????????????????????????????????????????
            // ??? display() ?????????????????????with() ?????????????????????????????????????????????????????????????????????????????????????????????
            $form->display('is_directory', '????????????')->with(function ($value) {
                return $value ? '???' :'???';
            });


            // ??????????????? . ??????????????????????????????
            $form->display('parent.name', '?????????');


        } else {
            // ????????????????????????????????????????????????
            $form->radio('is_directory', '????????????')
                ->options(['1' => '???', '0' => '???'])
                ->default('0')
                ->rules('required');

            // ???????????????????????????????????????
            $form->select('parent_id', '?????????')->ajax('/admin/api/categories');



        }





        return $form;
    }

    // ???????????????????????????
    public function apiIndex(Request $request)
    {
        // ???????????????????????? q ????????????
        $search = $request->input('q');
        $result = Category::query()
            // ?????? is_directory ???????????????
            ->where('is_directory', boolval($request->input('is_directory', true)))
            ->where('name', 'like', '%'.$search.'%')
            ->paginate();

        // ??????????????????????????????????????? Laravel-Admin ???????????????
        $result->setCollection($result->getCollection()->map(function (Category $category) {
            return ['id' => $category->id, 'text' => $category->full_name];
        }));

        return $result;
    }
}