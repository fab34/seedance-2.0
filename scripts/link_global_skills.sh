#!/bin/bash
# ==============================================================================
# 安裝 Seedance 2.0 Skills 到全域 Gemini IDE 自定義目錄
# ==============================================================================
# NOTE: 本腳本會使用軟連結 (Symlink) 將專案中的 root skill 與 28 個 sub-skills
# 連結至全域的 ~/.gemini/config/skills/ 下，使此電腦上的 agent 能直接調用。
# ==============================================================================

set -e

# 取得此腳本所在的專案根目錄
REPO_ROOT="/Users/fab34/Desktop/Git/seedance-2.0"
GLOBAL_SKILLS_DIR="/Users/fab34/.gemini/config/skills"

echo "======================================================================"
echo " 開始在全域環境中安裝 Seedance 2.0 相關的 skills..."
echo "======================================================================"
echo "專案路徑: $REPO_ROOT"
echo "全域 skills 目錄: $GLOBAL_SKILLS_DIR"

# 確保全域 skills 目錄存在
mkdir -p "$GLOBAL_SKILLS_DIR"

# 1. 建立主 root skill 'seedance-20' 的軟連結
# -s 建立符號連結
# -f 若已存在則強制覆蓋
# -n 如果目標是個指向目錄的軟連結，不進入該目錄，直接覆蓋軟連結
ln -sfn "$REPO_ROOT" "$GLOBAL_SKILLS_DIR/seedance-20"
echo "✅ 已建立全域連結: seedance-20 -> $REPO_ROOT"

# 2. 建立 sub-skills 的軟連結
echo "正在連結 sub-skills..."
for skill_path in "$REPO_ROOT"/skills/*; do
  if [ -d "$skill_path" ]; then
    skill_name=$(basename "$skill_path")
    ln -sfn "$skill_path" "$GLOBAL_SKILLS_DIR/$skill_name"
    echo "✅ 已建立全域連結: $skill_name -> $skill_path"
  fi
done

echo "======================================================================"
echo "🎉 Seedance 2.0 所有 skills 已成功在全域安裝（透過軟連結）！"
echo "======================================================================"
