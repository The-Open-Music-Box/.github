# Deployment Guide

This document explains the CI/CD setup for the TheOpenMusicBox organization profile repository.

## Overview

The repository uses GitHub Actions for:
1. **PR Validation** - Validates markdown, checks for broken links, and ensures file structure
2. **Automatic Deployment** - Deploys to Hostinger when changes are pushed to `prod` or when tags are created

## Workflows

### PR Validation (`pr-validation.yml`)

Runs on:
- Pull requests to `main` or `prod` branches
- Direct pushes to `main`

Performs:
- Markdown linting
- Broken link detection
- File structure validation
- Large file detection

### Deployment (`deploy.yml`)

Runs on:
- Push to `prod` branch
- Tag creation (v*)
- Manual trigger via workflow_dispatch

Deploys to:
- **Server:** Hostinger
- **Path:** `domains/theopenmusicbox.com/public_html/`

## GitHub Secrets Configuration

The following secrets must be configured in the repository settings:

### Required Secrets

1. **SSH_HOST**
   - Description: Hostinger SSH server hostname
   - Example: `your-server.hostinger.com`
   - Get from: MonAtelierWeb repository secrets

2. **SSH_USER**
   - Description: SSH username for Hostinger
   - Example: `u123456789`
   - Get from: MonAtelierWeb repository secrets

3. **SSH_PRIVATE_KEY**
   - Description: SSH private key for authentication
   - Format: Full private key including BEGIN and END lines
   - Get from: MonAtelierWeb repository secrets

4. **SSH_PORT** (optional)
   - Description: SSH port (defaults to 22)
   - Example: `22`
   - Get from: MonAtelierWeb repository secrets

5. **DEPLOY_PATH** (optional)
   - Description: Deployment path on server
   - Default: `domains/theopenmusicbox.com/public_html`
   - Override if needed for different path

### How to Configure Secrets

1. Go to repository settings: https://github.com/The-Open-Music-Box/.github/settings/secrets/actions
2. Click "New repository secret"
3. Add each secret with the values from MonAtelierWeb repository
4. Ensure the SSH key has proper permissions on the Hostinger server

## Deployment Workflow

### For Regular Updates

1. Make changes to the profile files (README.md, TECHNICAL_SPECIFICATIONS.md, etc.)
2. Create a PR to `main` branch
3. PR validation workflow runs automatically
4. Once approved and merged to `main`, changes are in staging
5. When ready for production:
   - Merge `main` to `prod` branch
   - Deployment workflow triggers automatically
   - Changes are deployed to https://theopenmusicbox.com

### For Versioned Releases

1. Create a git tag with version number:
   ```bash
   git tag v1.0.0
   git push origin v1.0.0
   ```
2. Deployment workflow triggers automatically
3. A VERSION file is created with the tag name
4. Changes are deployed to production

### Manual Deployment

1. Go to: https://github.com/The-Open-Music-Box/.github/actions/workflows/deploy.yml
2. Click "Run workflow"
3. Select the branch to deploy (usually `prod`)
4. Click "Run workflow"

## Branch Strategy

- **main** - Main development branch, receives PRs
- **prod** - Production branch, triggers automatic deployment
- **feature branches** - Follow naming convention: `feat/issues-X-description`

## Testing Deployments

Before deploying to production:

1. Test changes locally
2. Create a PR and ensure validation passes
3. Review changes in the PR
4. Merge to `main` first for staging review
5. Merge to `prod` when ready for production

## Troubleshooting

### Deployment Fails with SSH Authentication Error

- Check that SSH_PRIVATE_KEY secret is correctly formatted
- Verify SSH_HOST and SSH_USER are correct
- Ensure the public key is added to Hostinger authorized_keys

### Files Not Appearing on Website

- Check deployment path is correct: `domains/theopenmusicbox.com/public_html/`
- Verify file permissions on Hostinger server
- Check rsync output in workflow logs

### PR Validation Fails

- Review the workflow logs for specific errors
- Fix markdown linting issues
- Update broken links
- Ensure required files (README.md) exist

## Monitoring

- Check workflow runs: https://github.com/The-Open-Music-Box/.github/actions
- View deployment status in workflow summaries
- Verify website updates: https://theopenmusicbox.com

## Security Notes

- SSH private key is stored as a GitHub secret and never exposed in logs
- The key is temporarily written during deployment and deleted after
- Only authorized team members should have access to modify secrets
- Regular key rotation is recommended

## Support

For issues with CI/CD or deployment:
1. Check workflow logs for errors
2. Verify secrets are correctly configured
3. Test SSH connection manually to Hostinger
4. Create an issue in the repository with details
