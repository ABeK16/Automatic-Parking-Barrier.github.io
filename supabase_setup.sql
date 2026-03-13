-- ============================================================
-- STEP 1: Run this in your Supabase SQL Editor
-- Go to: https://supabase.com → Your Project → SQL Editor
-- ============================================================

CREATE TABLE pre_orders (
  id          BIGSERIAL PRIMARY KEY,
  name        TEXT NOT NULL,
  email       TEXT NOT NULL,
  phone       TEXT,
  units       TEXT NOT NULL,
  installation TEXT,
  timeline    TEXT,
  created_at  TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- STEP 2: Enable Row Level Security (keeps your data safe)
-- ============================================================

ALTER TABLE pre_orders ENABLE ROW LEVEL SECURITY;

-- Allow anyone to INSERT (submit the form) but not read other rows
CREATE POLICY "Allow public inserts" ON pre_orders
  FOR INSERT
  TO anon
  WITH CHECK (true);

-- ============================================================
-- DONE. Your table is ready.
-- Now open index.html and fill in your Supabase credentials
-- at the top of the <script> tag (SUPABASE_URL and SUPABASE_KEY)
-- ============================================================
