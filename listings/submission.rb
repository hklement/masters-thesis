class Submission < ActiveRecord::Base
  belongs_to :exercise
  has_many :files

  def collect_files
    ancestors = exercise.files.map(&:id).zip(exercise.files)
    descendants = files.map(&:file_id).zip(files)
    (ancestors + descendants).to_h.values
  end
end
