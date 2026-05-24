-- =====================================================
-- QUICK PERFORMANCE FIX - RUN THIS IN MySQL WORKBENCH
-- =====================================================

USE career_guidance_db;

-- Index 1
CREATE INDEX idx_branches_name
ON branches(branch_name);

-- Index 2
CREATE INDEX idx_cutoffs_branch_category_percentile
ON college_branch_cutoffs(
    branch_id,
    category_code,
    cutoff_percentile,
    available_seats
);

-- Index 3
CREATE INDEX idx_colleges_university
ON colleges(university_id);

-- Index 4
CREATE INDEX idx_colleges_city
ON colleges(city);

-- Index 5
CREATE INDEX idx_colleges_university_city
ON colleges(university_id, city);

-- Index 6
CREATE INDEX idx_cutoffs_college
ON college_branch_cutoffs(college_id);

-- Verify indexes
SHOW INDEX FROM branches WHERE Key_name LIKE 'idx_%';
SHOW INDEX FROM college_branch_cutoffs WHERE Key_name LIKE 'idx_%';
SHOW INDEX FROM colleges WHERE Key_name LIKE 'idx_%';