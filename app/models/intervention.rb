class Intervention < ApplicationRecord
    default_value_for :column_id, "(null)"
    default_value_for :elevator_id, "(null)"
    default_value_for :employee_id, "(null)"
    default_value_for :result, "(incomplete)"
    default_value_for :status, "(pending)"
end
