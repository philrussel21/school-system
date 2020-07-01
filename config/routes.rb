Rails.application.routes.draw do
  root 'schools#home'

  #subject routes
  get 'subjects/index'
  get 'subjects/new', to: 'subjects#new', as: 'new_subjects'
  get 'subjects/:name', to: 'subjects#show', as: 'subject'
  post 'subjects', to: 'subjects#create', as: 'subjects'
  # get 'subjects/:id/edit', to: 'subjects#edit', as: 'edit_subject'
  # patch 'subjects/:id', to: 'subjects#update', as: 'subject_update'

  #student routes
  get 'students/index'
  get 'students/new', to: 'students#new', as: 'new_students'
  post 'students/', to: 'students#create', as: 'students'
  get 'students/edit/:id', to: 'students#edit', as: 'students_edit'
  patch 'students/:id', to: 'students#update', as: 'students_update'
  get 'students/:id', to: 'students#show', as: 'student'


  #teachers routes
  get 'teachers/index'
  get 'teachers/new', to: 'teachers#new', as: 'new_teachers'
  get 'teachers/:id', to: 'teachers#show', as: 'teacher'
  post 'teachers/', to: 'teachers#create', as: 'teachers'
  get 'teachers/edit/:id', to: 'teachers#edit', as: 'teachers_edit'
  patch 'teachers/:id', to: 'teachers#update', as: 'teachers_update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
