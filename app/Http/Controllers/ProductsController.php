<?php

namespace CodeDelivery\Http\Controllers;
use CodeDelivery\Http\Requests\AdminCategoryRequest;
use CodeDelivery\Repositories\CategoryRepository;
use CodeDelivery\Http\Requests;

class ProductsController extends Controller
{

    /**
     * @var CategoryRepository
     */
    private $repository;

    public function __construct(CategoryRepository $repository){

        $this->repository = $repository;
    }

    public function index(){
        $products = $this->repository->paginate(5);
        return view('admin/products/index', compact('products'));
    }

    public function create(){
        return view('admin/products/create');
    }

    public function store(AdminCategoryRequest $request){
        $data = $request->all();
        $this->repository->create($data);

        return redirect()->route('admin/products');
    }

    public function edit($id){
        $category = $this->repository->find($id);
        return view('admin/categories/edit', compact('category'));
    }

    public function update(AdminCategoryRequest $request, $id){
        $data = $request->all();
        $this->repository->update($data, $id);
        return redirect()->route('admin/categories');
    }
}
