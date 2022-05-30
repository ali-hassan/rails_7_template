module Info
  extend ActiveSupport::Concern

  def mark_active_step step
    self.valid? ? (self.step == step) : (self.class::STEPS[self.step_position - 1] == step)
  end

  def step_enabled? step
    required_step =self.class::STEPS.find_index(step)
    current_step = self.step_position
    required_step <= current_step
  end

  def step_position
    self.class::STEPS.find_index(self.step)
  end

end