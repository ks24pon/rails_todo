class TasksController < ApplicationController
    # 一覧
    def index
      @tasks = Task.all
    end
    # 画面作成
    def new
      @task = Task.new
    end
    # 追加機能
    def create
      @task = Task.new(task_params)
      @task.save
      redirect_to tasks_path
    end
    # 編集画面
    def edit
      @task = Task.find(params[:id])
    end
    # 編集処理
    def update
      @task = Task.find(params[:id])
      @task.update(task_params)
      redirect_to tasks_path
    end
    # strong_parametr
    private
    def task_params
      params.require(:task).permit(:title)
    end
end
