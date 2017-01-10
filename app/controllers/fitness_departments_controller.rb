class FitnessDepartmentsController < InheritedResources::Base

  private

    def fitness_department_params
      params.require(:fitness_department).permit(:fitness_dept_id, :fitness_dept_name)
    end
end

