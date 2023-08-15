using LinearAlgebra
state_vector = [100, 100, 100, 100, 100, 100]
gravitational_parameter = 398600.0
time_step = 60 
total_time = 3600

function acceleration(state_vector)
    radius = norm(state_vector[1:3])
    acceleration = -1 * gravitational_parameter / radius^2
    acceleration_vector = acceleration * (state_vector[1:3] / radius)   
end
