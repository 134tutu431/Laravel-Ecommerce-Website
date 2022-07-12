-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 12, 2022 lúc 03:31 AM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `name`, `description`, `content`, `thumb`, `slug`, `active`, `views`, `created_at`, `updated_at`) VALUES
(9, 'Apple Music changes, Apple and SUP and more', 'Sunday is Mother’s Day. Wait, did you forget? Well, thanks to Apple, you can make a “Shot on iPhone” Mother’s Day video, using this site. Upload an image, enter your name, and then you can post the final result so Mom can enjoy.', '<p>Sunday is Mother&rsquo;s Day. Wait, did you forget? Well, thanks to Apple, you can make a &ldquo;Shot on iPhone&rdquo; Mother&rsquo;s Day video, using this site. Upload an image, enter your name, and then you can post the final result so Mom can enjoy.</p>', '/storage/uploads/products/2021-11-06/img3.jpg', 'apple-music-changes-apple-and-sup-and-more', 1, 56, '2021-11-06 07:57:46', '2021-11-06 07:57:46'),
(11, 'The next generation of Multi-Touch 1', 'The original iPhone introduced the world to Multi-Touch, forever changing the way people experience technology. With 3D Touch, you can do things that were never possible before. It senses how deeply you press the display, letting you do all kinds of essential things more quickly and simply.', '<p>The original iPhone introduced the world to Multi-Touch, forever changing the way people experience technology. With 3D Touch, you can do things that were never possible before. It senses how deeply you press the display, letting you do all kinds of essential things more quickly and simply. And it gives you real-time feedback in the form of subtle taps from the all-new Taptic Engine.</p>', '/storage/uploads/products/2021-11-07/img1.jpg', 'the-next-generation-of-multi-touch-1', 1, 32, '2021-11-06 19:57:38', '2021-11-11 07:28:48'),
(12, 'These Experts Show You How to Take a Cloud-based Approach to Endpoint', 'The original iPhone introduced the world to Multi-Touch, forever changing the way people experience technology. With 3D Touch, you can do things that were never possible before. It senses how deeply you press the display, letting you do all kinds of essential things more quickly and simply. And it gives you real-time feedback in the form of subtle taps from the all-new Taptic Engine.', '<p>During an&nbsp;<u><a href=\"https://twitter.com/anshelsag/status/1461434269687975938\" target=\"_blank\">in-house event</a>,&nbsp;<a href=\"https://www.notebookcheck.net/MediaTek-s-next-flagship-processor-will-not-be-the-Dimensity-2000.579330.0.html\" target=\"_self\">MediaTek</a>&nbsp;</u>representatives recently stated that they would be demonstrating a WiFi 7 capable device at CES 2022, and also provided some insights into the new standard. While they didn&#39;t say who would be the&nbsp;<em>first</em>&nbsp;adopter of WiFi 7, MediaTek stated that they&#39;d be one of the earliest.</p>\r\n\r\n<p>While not many technical details were shared, according to the presentation, WiFi 7 will be up to 2.4 times faster than the existing&nbsp;<a href=\"https://www.notebookcheck.net/ASUS-introduces-low-profile-Fanless-Chromebox-with-WiFi-6-and-multiple-4K-outputs-configurable-up-to-an-Ice-Lake-i7.515111.0.html\" target=\"_self\">WiFi 6</a>&nbsp;standard, and feature lower latency.&nbsp;</p>\r\n\r\n<p>That last point, in particular, could have major implications for&nbsp;<a href=\"https://www.notebookcheck.net/Xbox-One-users-can-now-run-Xbox-Series-X-S-exclusives-via-Xbox-Cloud-Gaming-opening-the-door-to-a-new-approach-to-cross-gen-compatibility.580099.0.html\" target=\"_self\">cloud gaming.</a>&nbsp;While many cloud gamers have enough bandwidth to accommodate 1080p or even 4K/60 play, latency remains an issue for the moment-to-moment cloud gaming experience. Lower latency WiFi 7-compatible hardware could shave precious milliseconds off, making for a better cloud gaming experience across the board.&nbsp;</p>\r\n\r\n<p>It&#39;ll be interesting to see exactly what WiFi 7 device MediaTek will be demoing at CES next year and how fast uptake will be with other chip makers like&nbsp;<a href=\"https://www.notebookcheck.net/Qualcomm-Snapdragon-Developer-Kit-now-available-for-all-Windows-on-ARM-developers-for-US-219-from-the-Microsoft-Store.580156.0.html\" target=\"_self\">Qualcomm.</a></p>\r\n\r\n<p>Check out the Huawei P40 Pro with WiFi 6&nbsp;<a href=\"https://www.amazon.com/ELS-NX9-Hybrid-SIM-Factory-Unlocked-Smartphone/dp/B086FFFGJL?tag=nbcnewsnet-20\" target=\"_blank\">here on Amazon.</a></p>', '/storage/uploads/products/2021-11-20/office-620822_960_720.webp', 'these-experts-show-you-how-to-take-a-cloud-based-approach-to-endpoint', 1, 12, '2021-11-20 07:03:49', '2021-11-20 07:06:39'),
(13, 'Build for the Real World: Supercharge Your Next Refresh with AMD', 'The pursuit of superior real-world performance is what motivated the teams at AMD to build our breakthrough AMD Ryzen™ 5000 PRO Series mobile processors, accelerating and extending the success of our 7nm manufacturing process and “Zen 3” architecture. The Ryzen 5000 PRO series mobile platform has combined unprecedented single-threaded and multithreaded speeds1 with comprehensive security features to give businesses and their users performance designed for the real world.', '<p>No matter the number of systems being replaced, refresh cycles are opportunities. Making the most of these opportunities starts with carefully understanding the evolving performance requirements inside the organization. Then it&rsquo;s time to evaluate possible solutions, looking at current workloads while always keeping an eye on what might be coming next.</p>\r\n\r\n<p>Decision makers need to be clear about their options and maintain consistency throughout each refresh cycle, and this means they need to find meaningful ways to measure and compare performance and productivity. Application or workload requirements are the foundation, but device refresh evaluations must go much deeper to ensure tomorrow&rsquo;s needs are reliably met.</p>\r\n\r\n<h3>A rapid pace of change</h3>\r\n\r\n<p>While the impacts of a more remote workforce are still being fully measured, organizations haven&rsquo;t waited, quickly adapting to new rules and realities. These new rules necessitate not simply greater mobility, but also a fundamental shift in real-world tools and infrastructure.</p>\r\n\r\n<ul>\r\n	<li><strong>Distributed, more collaborative hybrid workforces have become the norm</strong>, testing an organization&rsquo;s ability to deploy, manage, and secure a collected, collaborative environment.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Video conferencing has become essential to everybody&rsquo;s workload</strong>, pushing businesses to provide performance-optimized software and hardware so their employees stay connected and productive.</li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;</strong>When it comes to measuring performance, relevant, real-world application- and experience- driven testing is now foundational. &nbsp;</p>\r\n\r\n<h3>The goal: continuous, meaningful, real-world innovation at every layer</h3>\r\n\r\n<p>The pursuit of superior real-world performance is what motivated the teams at AMD to build our breakthrough AMD Ryzen&trade; 5000 PRO Series mobile processors, accelerating and extending the success of our 7nm manufacturing process and &ldquo;Zen 3&rdquo; architecture. The Ryzen 5000 PRO series mobile platform has combined unprecedented single-threaded and multithreaded speeds<sup>1</sup>&nbsp;with comprehensive security features to give businesses and their users performance designed for the real world.</p>\r\n\r\n<ul>\r\n	<li>The latest generation of &ldquo;Zen 3&rdquo; architecture-based processors offers up to 19% faster IPC (instructions per clock) performance<sup>2</sup>, translating directly into an&nbsp;<strong>overall faster user experience.</strong></li>\r\n	<li>The market-leading 8 high-performance cores, the most for any thin and light business notebook, enables&nbsp;<strong>huge gains on mission-critical multithread workloads.</strong></li>\r\n	<li>A physically redesigned L3 cache, designed as a monolithic die available to all cores, that&rsquo;s double from 8 to 16MB is designed to deliver&nbsp;<strong>faster speed on all processes.</strong></li>\r\n</ul>', '/storage/uploads/products/2021-11-20/workspace-1280538__340.webp', 'build-for-the-real-world-supercharge-your-next-refresh-with-amd', 1, 58, '2021-11-20 07:04:36', '2021-11-20 07:04:36'),
(14, 'Windows 11 Insider Previews: What’s in the latest build?', 'Get the latest info on new preview builds of Windows 11 as they roll out to Windows Insiders. Now updated for Insider Preview Build 22000.348 for the Beta and Release Preview Channels, released on Nov. 19, 2021. The company frequently rolls out public preview builds to members of its Windows Insider Program, allowing them to test out — and even help shape — upcoming features.but behind the scenes, Microsoft is constantly working to improve the newest version of Windows.', '<p><a href=\"https://www.computerworld.com/article/3635896/microsoft-lets-windows-11-loose-on-the-world.html\">Windows 11 has been released</a>, but behind the scenes, Microsoft is constantly working to improve the newest version of Windows. The company frequently rolls out public preview builds to members of its Windows Insider Program, allowing them to test out &mdash; and even help shape &mdash; upcoming features.</p>\r\n\r\n<p>The Windows Insider program is divided into three channels:</p>\r\n\r\n<ul>\r\n	<li>The Dev Channel is where new features are introduced for initial testing, regardless of which Windows release they&rsquo;ll eventually end up in. This channel is best for technical users and developers and builds in it may be unstable and buggy.</li>\r\n	<li>In the Beta Channel, you&rsquo;ll get more polished features that will be deployed in the next major Windows release. This channel is best for early adopters, and Microsoft says your feedback in this channel will have the most impact.</li>\r\n	<li>The Release Preview Channel typically doesn&rsquo;t see action until shortly before a new feature update is rolled out. It&rsquo;s meant for final testing of an upcoming release and is best for those who want the most stable builds.</li>\r\n</ul>\r\n\r\n<p>The Beta and Release Preview Channels also receive bug-fix builds for the currently shipping version of Windows 11.</p>\r\n\r\n<p>Not everyone can participate in the Windows 11 Insider program, because the new operating system has&nbsp;<a href=\"https://blogs.windows.com/windows-insider/2021/06/28/update-on-windows-11-minimum-system-requirements/\" rel=\"noopener nofollow\" target=\"_blank\">more stringent system requirements</a>&nbsp;than Windows 10.&nbsp;<a href=\"https://blogs.windows.com/windows-insider/2021/06/24/preparing-for-insider-preview-builds-of-windows-11/\" rel=\"noopener nofollow\" target=\"_blank\">As outlined in this Microsoft blog post</a>, if your PC fails to meet the minimum hardware requirements for Windows 11, you cannot join the Windows 11 Insider Program.</p>\r\n\r\n<p><strong>[ Related:&nbsp;<a href=\"https://www.computerworld.com/article/3631575/how-to-check-if-your-pc-can-run-windows-11.html\">How to check if your PC can run Windows 11</a>&nbsp;]</strong></p>\r\n\r\n<p>Use the links below to find information about the Windows 11 preview builds that have been released:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.computerworld.com/article/3623370/windows-11-insider-previews-whats-in-latest-build.html#devchannel\" rel=\"nofollow\">Dev Channel</a></li>\r\n	<li><a href=\"https://www.computerworld.com/article/3623370/windows-11-insider-previews-whats-in-latest-build.html#betachannel\" rel=\"nofollow\">Original Windows 11 release</a>&nbsp;(Beta and Release Preview Channels)</li>\r\n</ul>\r\n\r\n<p>For each build, we&#39;ve included the date of its release, which Insider channel it was released to, a summary of what&rsquo;s in the build, and a link to Microsoft&#39;s announcement about it.</p>\r\n\r\n<p><em>Note: If you&#39;re looking for information about updates being rolled out to all Windows 11 users, not previews for Windows Insiders, see &ldquo;<a href=\"https://www.computerworld.com/article/3636790/windows-11-a-guide-to-the-updates.html\">Windows 11: A guide to the updates</a>.&rdquo;</em></p>', '/storage/uploads/products/2021-11-20/man-2562325__340.webp', 'windows-11-insider-previews-whats-in-the-latest-build', 1, 13, '2021-11-20 07:12:27', '2022-01-13 21:49:54'),
(15, 'Updates to Exchange and Microsoft Installer drive Patch Tuesday testing', 'Microsoft rolled out a relatively light update for this month\'s Patch Tuesday, though two significant flaws in the Windows platform have been publicly disclosed and lend some urgency to the latest updates.both relating to Remote Desktop Protocol handling, have been disclosed and are lending some urgency to applying Windows updates. And we have another technically challenging update to Microsoft Exchange Server to manage as well.', '<h2><strong>Key testing scenarios</strong></h2>\r\n\r\n<p>There are no reported high-risk changes to the Windows platform this month. However, there is one reported functional change, and an additional feature:</p>\r\n\r\n<p><strong>[ Related:&nbsp;<a href=\"https://www.computerworld.com/article/3563013/microsoft-revamps-windows-insider-release-vernacular.html\">Microsoft revamps Windows Insider release vernacular&nbsp;</a>]</strong></p>\r\n\r\n<ul>\r\n	<li>You will have to test your printers again. Try using Notepad first, then Adobe Reader (PDFs) and include images (PNG, JPG, BMP). Testing is especially important if you have V3 printer drivers.</li>\r\n	<li>If your line-of-business apps are using COM (or heaven forbid DCOM), you will need a full burn-in test. Changes in the COM STA Threading model could lead to difficult trouble-shooting scenarios.</li>\r\n	<li>Using the Microsoft<a href=\"https://support.microsoft.com/en-us/windows/what-is-the-microsoft-movies-tv-app-59328422-053f-30b3-843a-f8774567a85e\" rel=\"nofollow noopener\" target=\"_blank\">&nbsp;Movies and TV application</a>, play MP4 videos and check for audio issues.</li>\r\n	<li>You may not be using Internet explorer (IE), but applications may have dependencies on IE components (IEFRAME.DLL). Assess your application portfolio for this key dependency, and then test for Office component integration issues and tabbed browsing.</li>\r\n	<li>Also, have a look at<a href=\"https://support.microsoft.com/en-us/windows/get-help-with-timeline-febc28db-034c-d2b0-3bbe-79aa0c501039\" rel=\"nofollow noopener\" target=\"_blank\">&nbsp;Microsoft Timeline</a>, as minor changes have been made to how your data is managed.</li>\r\n</ul>\r\n\r\n<p>The biggest issue (or engineering task) this month is the need to validate that your applications install, repair, update, and uninstall correctly. Check your<a href=\"https://docs.microsoft.com/en-us/troubleshoot/windows-client/application-management/enable-windows-installer-logging\" rel=\"nofollow\">&nbsp;Windows&nbsp;Installer logs</a>&nbsp;(0&#39;s for success). I think this is a big job as we commonly focus on application installations; this time we have to look at how applications are uninstalled. Once an application has been uninstalled, the target machine should be clean, error logs empty, and no applications broken. Getting this right will allow for the next MSI Installer update to run smoothly.</p>\r\n\r\n<h2><strong>Known issues</strong></h2>\r\n\r\n<p>Each month, Microsoft includes a list of known issues that relate to the operating system and platforms included in this update cycle. Here are a few key issues that relate to the latest builds from Microsoft, including:</p>\r\n\r\n<ul>\r\n	<li>After installing the June 21, 2021 (<a href=\"https://support.microsoft.com/help/5003690\" rel=\"nofollow noopener\" target=\"_blank\">KB5003690</a>) update, some devices cannot install new updates, such as the July 6, 2021 (KB5004945) or later updates. You will receive the error message, &quot;PSFX_E_MATCHING_BINARY_MISSING.&quot; For more information and a workaround, see<a href=\"https://support.microsoft.com/help/5005322\" rel=\"nofollow noopener\" target=\"_blank\">&nbsp;KB5005322</a>.</li>\r\n	<li>Some Windows 10 LTSC systems are encountering an issue&nbsp;after installing<a href=\"https://support.microsoft.com/help/4493509\" rel=\"nofollow noopener\" target=\"_blank\">&nbsp;KB4493509</a>. Devices with some Asian language packs installed may receive the error, &quot;0x800f0982 - PSFX_E_MATCHING_COMPONENT_NOT_FOUND.&quot; Microsoft is currently working on a fix.</li>\r\n	<li>Windows print clients might encounter the following errors when connecting to a remote printer shared on a Windows print server: 0x000006e4 (RPC_S_CANNOT_SUPPORT), 0x0000007c (ERROR_INVALID_LEVEL), 0x00000709 (ERROR_INVALID_PRINTER_NAME). Microsoft is working on this issue. We expect that there may be an OOB update to address these before December&#39;s B release (Patch Tuesday). The good news here is that most of these reported printer issues relate to corporate environments (e.g., printer servers combined with a domain controller); most home users will not be affected by the security concerns or printing problems.</li>\r\n</ul>\r\n\r\n<p>After installing this month&#39;s Microsoft update, connecting to devices in an untrusted domain using Remote Desktop might fail to authenticate when using smart card authentication. You might receive the prompt &quot;Your credentials did not work.&quot; This issue is resolved using Known Issue Rollback (<a href=\"https://techcommunity.microsoft.com/t5/windows-it-pro-blog/known-issue-rollback-helping-you-keep-windows-devices-protected/ba-p/2176831\" rel=\"nofollow noopener\" target=\"_blank\">KIR</a>) &mdash; which is kind of exciting. Microsoft now allows for policy-driven execution paths of managed code. In case you encounter issues, you can roll back the execution path of the affected files, putting that piece of code back to a &quot;pre-patch&quot; state. To do this successfully, you need to make sure you have the correct policy files for your platform. You can find the relevant policy files for each Windows version here:</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://download.microsoft.com/download/1/e/3/1e36d9a4-e8de-4b35-8566-efdb6aab08fe/Windows%20Server%202022%20Known%20Issue%20Rollback%20101521%2001.msi\" rel=\"nofollow noopener\" target=\"_blank\">Windows Server 2022</a></li>\r\n	<li><a href=\"https://download.microsoft.com/download/1/e/3/1e36d9a4-e8de-4b35-8566-efdb6aab08fe/Windows%2010%20(2004,%2020H2%20&amp;%2021H1)%20Known%20Issue%20Rollback%20101521%2001.msi\" rel=\"nofollow noopener\" target=\"_blank\">Windows 10, version 2004</a></li>\r\n	<li><a href=\"https://download.microsoft.com/download/1/e/3/1e36d9a4-e8de-4b35-8566-efdb6aab08fe/Windows%2010%20(2004,%2020H2%20&amp;%2021H1)%20Known%20Issue%20Rollback%20101521%2001.msi\" rel=\"nofollow noopener\" target=\"_blank\">Windows 10, version 20H2</a></li>\r\n	<li><a href=\"https://download.microsoft.com/download/1/e/3/1e36d9a4-e8de-4b35-8566-efdb6aab08fe/Windows%2010%20(2004,%2020H2%20&amp;%2021H1)%20Known%20Issue%20Rollback%20101521%2001.msi\" rel=\"nofollow noopener\" target=\"_blank\">Windows 10, version 21H1</a></li>\r\n</ul>\r\n\r\n<p>One of the best ways to see whether there are known issues that affect your target platform is to check out the many configuration options for downloading patch data at the<a href=\"https://msrc.microsoft.com/update-guide/en-us\" rel=\"nofollow noopener\" target=\"_blank\">&nbsp;Microsoft Security Update guidance</a>&nbsp;site or the&nbsp;<a href=\"https://support.microsoft.com/en-us/topic/security-update-deployment-information-november-9-2021-kb5007403-e86d2ad1-a1c8-4f8f-a45b-96c3b4aa137e\" rel=\"nofollow\">summary page for this month&#39;s security update</a>.&nbsp;</p>', '/storage/uploads/products/2021-11-20/cup-of-coffee-1280537__340.webp', 'updates-to-exchange-and-microsoft-installer-drive-patch-tuesday-testing', 1, 16, '2021-11-20 07:13:17', '2021-11-20 07:13:17'),
(16, 'Review: The new 16-in. MacBook Pro is Apple to the core', 'The new 16-in. MacBook Pro is a major step forward for Apple’s hardware platform and brings together all the benefits of its overall computing vision.Apple\'s new MacBook pro laptops were unveiled just three weeks ago, and have been in users\' hands for only two. Having spent a week using one of the 16-in. versions, I can say it represents a huge leap for Apple’s computer platform by tying together all of the elements of the company’s computing vision.', '<p>Apple&#39;s new MacBook pro laptops were unveiled just three weeks ago, and have been in users&#39; hands for only two. Having spent a week using one of the 16-in. versions, I can say it represents a huge leap for Apple&rsquo;s computer platform by tying together all of the elements of the company&rsquo;s computing vision.</p>\r\n\r\n<h2><strong>How the MacBook Pro performs: the TL;DR</strong></h2>\r\n\r\n<ul>\r\n	<li>Performance data confirms Apple&rsquo;s launch claims; it&#39;s fast.</li>\r\n	<li>Battery life and performance mean you can achieve much more with these Macs.</li>\r\n	<li>You effectively end up with a reference monitor in your backpack.</li>\r\n	<li>You&rsquo;ll hardly ever hear the fan; these Macs run cool.</li>\r\n	<li>Desktop performance on the go that&#39;s as effective in the office as in the field.</li>\r\n	<li>An overall triumph of design and execution, from the processor to the OS.</li>\r\n	<li>Apple&#39;s move to M-series processors&nbsp;raises the status of its entire Mac fleet.</li>\r\n</ul>\r\n\r\n<h2>Astonishing performance</h2>\r\n\r\n<p>I&rsquo;ve been working with the mid-range 16-in. model equipped with an M1 Pro chip that has a 10-core CPU, 16 GPU cores, and 16GB of unified memory. It costs $2,699 (and is available to the same specifications in a 14-in. model for $2,499).</p>\r\n\r\n<p>Cast your mind back to the late 2019 MacBook Pro with an Intel Core i9-9980HK chip; it yielded Geekbench scores of 1,087 (single-core) and 6,823 (multi-core). Then recall the M1-based 13-in. MacBook Pro from last year; it achieved 1,706 (single-core) and 7,385 (multi-core) scores. (The M1-based MacBook Air hit similar numbers.)</p>\r\n\r\n<p><strong>[ Further reading:&nbsp;<a href=\"https://www.computerworld.com/article/3224399/microsoft-windows/5-top-ways-to-run-windows-on-a-mac.html\">5 top ways to run Windows on a Mac</a>&nbsp;]</strong></p>\r\n\r\n<p>I couldn&rsquo;t quite believe the data I generated with Geekbench testing on this MacBook Pro: On average across five tests, the new Mac hit 1,755 (single-core) and 12,547 (multi-core). That&rsquo;s as good as a late 2017 iMac Pro or an entry-level late 2019 Mac Pro &mdash; in a system you can carry under one arm.</p>\r\n\r\n<p>This performance boost reflects how Apple configured the cores on these chips. As part of Apple&#39;s processor evolution, it turned an additional two cores on these systems into high performance cores. That move is reflected in these results.</p>\r\n\r\n<h2>You&rsquo;ll get work done faster</h2>\r\n\r\n<p>What that performance means is significant. Put simply, if your work involves using computers at peak performance to get development, design, video, or scientific research calculations done, these new Macs will help you get work done faster. On an individual basis, that&rsquo;s significant, but if your company runs fleets of machines, you may well see significant cost savings and productivity increases over time if you deploy these.</p>\r\n\r\n<p>At least one developer said his company will see these Macs pay for themselves in terms of productivity benefits within three months of deployment.&nbsp;<a href=\"https://twitter.com/tobi/status/1457747124691550210?s=20\" rel=\"nofollow noopener\" target=\"_blank\">Many developers</a>&nbsp;are&nbsp;<a href=\"https://9to5mac.com/2021/11/08/heres-why-twitter-uber-and-more-are-giving-fully-loaded-m1-max-macbook-pros-to-engineers/#more-767530\" rel=\"nofollow noopener\" target=\"_blank\">deploying these Macs</a>&nbsp;because they are significantly&nbsp;<a href=\"https://twitter.com/jszumski/status/1456715133615579140?s=20\" rel=\"nofollow noopener\" target=\"_blank\">more capable than existing laptops</a>. I&#39;ve also seen reports that claim significant application speed increases on these Macs. (Developers can also now use Apple&rsquo;s TestFlight to distribute application betas to Macs.)</p>', '/storage/uploads/products/2021-11-20/student-849821__340.webp', 'review-the-new-16-in-macbook-pro-is-apple-to-the-core', 1, 61, '2021-11-20 07:14:09', '2022-01-15 07:59:36'),
(17, 'What the iPhone 13 says about Apple’s 2021 MacBook Pro', 'Apple could have made much more impressive claims when it launched the iPhone 13. What might these tell us about the Mac?Apple frustrated most of us with mealy-mouthed comparisons and opaque speed benchmarks when it unveiled the iPhone 13 and its A15 Bionic chip. It seems the company could have made big claims, and the fact it didn’t may be a Mac story.', '<p>Apple frustrated most of us with mealy-mouthed comparisons and opaque speed benchmarks when it&nbsp;<a href=\"https://www.computerworld.com/article/3635548/my-first-week-with-an-iphone-13-mini.html\">unveiled the iPhone 13</a>&nbsp;and its A15 Bionic chip. It seems the company could have made big claims, and the fact it didn&rsquo;t may be a Mac story.</p>\r\n\r\n<h2>A spark in the dark</h2>\r\n\r\n<p><a href=\"https://www.computerworld.com/article/3633535/what-the-iphone-13-and-ipad-mini-mean-for-the-enterprise.html\">Think back to the announcement</a>&nbsp;and you may recall Apple chose not to give us solid comparison data against the A14 Bionic chip, instead offering comparisons against a previous model of the device. So we had to try to guesstimate what the real performance improvements might be.</p>\r\n\r\n<p>I have no idea why it chose to do so, given the strategic important of its processor designs. As is customary with an information gap of this kind, Apple&rsquo;s critics quickly began sharing weird stories claiming the silicon design teams are suffering a brain drain.</p>\r\n\r\n<p><strong>[ Further reading:&nbsp;<a href=\"https://www.computerworld.com/article/3218709/apple-mac/how-to-speed-up-a-mac-in-11-tips.html\">How to speed up a Mac in 11 tips</a>&nbsp;]</strong></p>\r\n\r\n<p>Perhaps they are. Perhaps they aren&rsquo;t.</p>\r\n\r\n<p>But Apple has many engineers, so staff churn is to be expected. Misinformation grows in darkness, so it&rsquo;s business as usual to my eyes.</p>\r\n\r\n<h2>What we&rsquo;ve learned</h2>\r\n\r\n<p>Apple at launch called the A15 Bionic up to 50% faster than its competition.&nbsp;The four-core GPU in the iPhone 13 and iPhone 13 mini (five GPU cores on both Pro models) offers 40% (50% on Pro) better graphics performance, it said.</p>\r\n\r\n<p>This wasn&rsquo;t true.&nbsp;In fact, the truth is more impressive.</p>\r\n\r\n<h4><a href=\"https://www.computerworld.com/resources\">RECOMMENDED WHITEPAPERS</a></h4>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.computerworld.com/resources/227683/liquid-cooling-solutions-from-supermicro\" title=\"LIQUID COOLING SOLUTIONS FROM SUPERMICRO\"><img src=\"https://idg.blueconic.net/rest/contentStores/d90c9555-d728-4305-91b5-a476232189d4/items/www.computerworld.com%252Fresources%252F227683%252Fliquid-cooling-solutions-from-supermicro/image?etag=1637363773512\" /></a>\r\n\r\n	<p><a href=\"https://www.computerworld.com/resources/227683/liquid-cooling-solutions-from-supermicro\" title=\"LIQUID COOLING SOLUTIONS FROM SUPERMICRO\">LIQUID COOLING SOLUTIONS FROM SUPERMICRO</a></p>\r\n	</li>\r\n	<li><a href=\"https://www.computerworld.com/resources/227773/healthcare-security-capabilities-identity-cloud\" title=\"Healthcare Security Capabilities Identity Cloud\"><img src=\"https://idg.blueconic.net/rest/contentStores/d90c9555-d728-4305-91b5-a476232189d4/items/www.computerworld.com%252Fresources%252F227773%252Fhealthcare-security-capabilities-identity-cloud/image?etag=1637363583684\" /></a>\r\n	<p><a href=\"https://www.computerworld.com/resources/227773/healthcare-security-capabilities-identity-cloud\" title=\"Healthcare Security Capabilities Identity Cloud\">Healthcare Security Capabilities Identity Cloud</a></p>\r\n	</li>\r\n	<li><a href=\"https://www.computerworld.com/resources/227790/identity-is-the-core-of-federal-zero-trust-environments\" title=\"Identity is the Core of Federal Zero Trust Environments\"><img src=\"https://idg.blueconic.net/rest/contentStores/d90c9555-d728-4305-91b5-a476232189d4/items/www.computerworld.com%252Fresources%252F227790%252Fidentity-is-the-core-of-federal-zero-trust-environments/image?etag=1637344694759\" /></a>\r\n	<p><a href=\"https://www.computerworld.com/resources/227790/identity-is-the-core-of-federal-zero-trust-environments\" title=\"Identity is the Core of Federal Zero Trust Environments\">Identity is the Core of Federal Zero Trust Environments</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Fresh benchmarks from&nbsp;<em><a href=\"https://www.anandtech.com/show/16983/the-apple-a15-soc-performance-review-faster-more-efficient\" rel=\"nofollow noopener\" target=\"_blank\">AnandTech</a></em>&nbsp;show the A15 Bionic to be 62% faster than competing chips. While its processors seem to need more power, they are more energy efficient, with 32MB cache on the chip. This makes the processors more efficient again by keeping much of the routine operations on the processor, rather than driving these through memory.</p>\r\n\r\n<p>The report also identified a 50% improvement in the L2 cache on the performance cores, and notes that the 12MB L2 cache on the chip matches that of the M1 processor on Macs.</p>\r\n\r\n<h2>What about Macs?</h2>\r\n\r\n<p>Given that Apple&rsquo;s A-series processors are siblings to its M-series Mac chips, what&rsquo;s good for one is good for both. And this suggests some of the iterative improvements we&rsquo;re about to see appear in the M1X-powered MacBook Pro&rsquo;s we expect Apple to introduce soon.</p>\r\n\r\n<p>(While the&nbsp;<a href=\"https://www.computerworld.com/article/3607979/if-you-liked-the-m1-macs-youll-love-the-m1x.html\">potential introduction of these new pro Macs</a>&nbsp;has been an&nbsp;<a href=\"https://www.computerworld.com/article/3620885/wwdc-2021-what-we-think-we-know-about-an-m1x-macbook-pro.html\">intermittent rumor all year</a>, soothsayers seem solidly behind the idea these will appear this month.)</p>\r\n\r\n<p>Of course, translating the performance gains we&rsquo;ve seen in Apple&rsquo;s iPhone 13 chip into relative potential gains for the M-series Macs is deeply speculative, uncertain and cannot be relied upon. So, with that caveat, let&rsquo;s speculate:</p>\r\n\r\n<ol>\r\n	<li>If Apple has been able to unleash a 60% improvement in comparison to competing mobile processors, it should be able to tweak additional performance on the Mac variant thanks to the larger heat sink.</li>\r\n	<li>Noting that the focus in this chip seems to be on energy efficiency,&nbsp;<em>AnandTech</em>&nbsp;observes a 17% power efficiency gain in the A15 compared to A14 chip. This should translate into a significant&nbsp;<a href=\"https://www.applemust.com/yes-you-can-cut-your-energy-bills-with-an-m1-mac-mini/\" rel=\"nofollow noopener\" target=\"_blank\">battery life gains</a>&nbsp;on the new Macs.</li>\r\n</ol>\r\n\r\n<p>The report also claims the A15 delivers a 28% performance uplift. Given the performance seen with the M1 Macs &mdash; best epitomized by Adobe Photoshop which&nbsp;<a href=\"https://www.applemust.com/photoshop-goes-apple-silicon-native-huge-performance-gains/\" rel=\"nofollow noopener\" target=\"_blank\">runs at 1.5x the speed</a>&nbsp;on them &mdash; it&rsquo;s reasonable to anticipate similar gains on M1X Macs. &nbsp;This matters because Macs are used to get stuff done, and a 28% boost on the 50% (1.5x) increase Photoshop sees on an M1 means we can speculate (and this really is speculation) that Apple&rsquo;s pro M1X Macs will deliver much, much greater performance than you get from the Intel systems they replace.</p>\r\n\r\n<p><a href=\"https://blogs.computerworld.com/article/3596499/apples-macs-glide-into-the-fast-lane-with-m1-apple-silicon.html\" rel=\"nofollow\">Announcing the M1 Macs</a>, Apple claimed:</p>\r\n\r\n<ul>\r\n	<li>3D titles render 6.6x faster in Final Cut Pro.</li>\r\n	<li>Project building is 3.6x faster in Xcode.</li>\r\n	<li>Machine learning is 15x faster.</li>\r\n</ul>\r\n\r\n<p>I suspect key Apple partners will already be working with these new Macs in their labs. We&nbsp;<a href=\"https://www.computerworld.com/article/3611383/qa-adobe-explains-the-transition-to-apple-silicon.html\">know Adobe was able to work closely with Apple</a>&nbsp;to optimize Photoshop for the M1 chip. That work also&nbsp;<a href=\"https://www.applemust.com/apple-wants-you-to-know-ipads-are-professional-computers/\" rel=\"nofollow noopener\" target=\"_blank\">bleeds into iPads</a>, which already share the Mac chip.</p>\r\n\r\n<p>AnandTech also says: &ldquo;In the GPU side, Apple&rsquo;s peak performance improvements are off the charts, with a combination of a new larger GPU, new architecture, and the larger system cache that helps both performance as well as efficiency.&rdquo;</p>\r\n\r\n<p>Mac users in pro markets will be curious to see whether this kind of graphics performance gain also comes to the next-generation M-series chips. If so, this translates into real productivity gains and opens the window to further creative opportunity.</p>\r\n\r\n<p>Given the current M1 Macs provide&nbsp;<a href=\"https://www.computerworld.com/article/3620885/wwdc-2021-what-we-think-we-know-about-an-m1x-macbook-pro.html\">17-hours of battery life</a>, the possibilities for mobile work are boundless. Perhaps we&#39;re looking at a Mac you can use for days without a power supply.</p>\r\n\r\n<p>Given Apple&rsquo;s silicon teams are already designing processors to put into products in 2025, all of this bodes well for Apple&rsquo;s platforms.&nbsp;&ldquo;When we design our chips, which are like three or four years ahead of time, Craig and I are sitting in the same room defining what we want to deliver, and then we work hand in hand,&rdquo; Johny Srouji, Apple&rsquo;s senior vice president for hardware technologies, told&nbsp;<a href=\"https://om.co/2020/11/17/why-m1-chip-by-apple-matters/\" rel=\"nofollow noopener\" target=\"_blank\">Om Malik</a>.</p>\r\n\r\n<p>Now, I don&rsquo;t know the extent to which any of these speculations will be met, but with a Mac event&nbsp;<a href=\"https://9to5mac.com/2021/05/18/bloomberg-redesigned-macbook-pro-coming-as-soon-as-this-summer-up-to-64gb-ram-and-10-core-chip/\" rel=\"nofollow noopener\" target=\"_blank\">anticipated later this month</a>, we won&rsquo;t have long to find out.</p>\r\n\r\n<p><strong><em>NB:</em></strong>&nbsp;<em>We&rsquo;ve all gotten into the habit of calling the next-generation M-series chips &ldquo;M1X,&rdquo; but don&rsquo;t be surprised if Apple calls them something else &mdash; M1+, for example.</em></p>\r\n\r\n<p><em>Please follow me on&nbsp;<a href=\"https://twitter.com/jonnyevans_cw\" rel=\"nofollow noopener\" target=\"_blank\">Twitter</a>, or join me in the&nbsp;<a href=\"https://mewe.com/join/appleholics_bar_and_grill\" rel=\"nofollow noopener\" target=\"_blank\">AppleHolic&rsquo;s bar &amp; grill</a>&nbsp;and&nbsp;<a href=\"https://mewe.com/join/apple_discussions\" rel=\"nofollow noopener\" target=\"_blank\">Apple Discussions</a>&nbsp;groups on MeWe.</em></p>', '/storage/uploads/products/2021-11-20/laptop-5842509_960_720.jpg', 'what-the-iphone-13-says-about-apples-2021-macbook-pro', 1, 83, '2021-11-20 07:16:46', '2022-01-15 07:59:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `content`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 0, 'Laptop', '<p>Laptop</p>', 'laptop', 1, '2021-11-05 05:33:15', '2021-11-05 05:33:15'),
(6, 'Tablet', 0, 'Tablet', '<p>Tablet</p>', 'tablet', 1, '2021-11-14 20:18:14', '2021-11-14 20:18:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reply_status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `name`, `content`, `product_id`, `status`, `parent_id`, `reply_status`, `created_at`, `updated_at`) VALUES
(1, 'Chuong', 'Apple Music brings iTunes music streaming to the UK. But is it worth paying for? In our Apple Music review, we examine the service\'s features, UK pricing, audio quality and music library', 73, 1, NULL, 1, '2021-11-16 02:09:50', '2021-11-16 08:27:46'),
(2, 'Chris Hemsworth', 'Samsung\'s Galaxy S7 smartphone is getting serious hype. Here\'s what it does better than Apple\'s iPhone 6s.', 73, 1, NULL, 1, '2021-11-16 02:40:30', '2021-11-16 08:26:47'),
(34, 'Admin', 'I like this PC especially that it is compatible with windows 11 , and I would have given 5 stars but it has three things I found annoying, but not deal breakers:', 74, 1, NULL, 1, '2021-11-15 20:48:26', '2021-11-16 05:53:04'),
(35, 'Admin', 'I want to say I have had my eyes on this laptop and over this weekend I finally found one in-stock at my favorite Best Buy location S Wads :) I saved for this thing so I could get it protected lol I saved in total $250 paid $800 with my protection plan', 74, 1, NULL, NULL, '2021-11-15 20:49:13', '2021-11-22 06:12:43'),
(36, 'Admin', ' University school work and light gaming. I bought this laptop out of impulse but do not regret it one bit. I also love that I can put it into tablet mode and use a stylus to take notes during class and then back into laptop mode to play some Genshin Impact after studying.', 74, 1, NULL, 1, '2021-11-15 20:50:32', '2021-11-16 05:29:47'),
(37, 'Admin', 'Perfect for University school work and light gaming. I bought this laptop out of impulse but do not regret it one bit. I also love that I can put it into tablet mode and use a stylus to take notes during class and then back into laptop mode to play some Genshin Impact after studying.', 74, 1, NULL, 1, '2021-11-15 21:33:39', '2021-11-17 22:44:57'),
(38, 'Admin', 'I love it just need to find a bag to put my laptop in', 74, 1, NULL, 1, '2021-11-15 21:35:53', '2021-11-16 08:43:45'),
(43, 'Admin', 'Thank you', 74, 1, 38, NULL, '2021-11-16 06:22:57', '2021-11-16 06:22:57'),
(44, 'Admin', 'Thank you', 73, 1, 36, NULL, '2021-11-16 06:23:22', '2021-11-16 06:23:22'),
(46, 'Admin', 'ok', 74, 1, 37, NULL, '2021-11-16 07:01:20', '2021-11-16 07:01:20'),
(47, 'Admin', 'Thanks', 74, 1, 34, NULL, '2021-11-16 07:03:06', '2021-11-16 07:03:06'),
(48, 'Admin', 'Thank', 73, 1, 2, NULL, '2021-11-16 07:04:02', '2021-11-16 07:04:02'),
(56, 'Admin', 'sadadas', 73, 1, 1, NULL, '2021-11-16 08:27:46', '2021-11-16 08:27:46'),
(57, 'Lisa', 'This little power house laptop is great. It\'s fast and feel like a premium laptop.', 72, 1, NULL, 1, '2021-11-16 08:35:04', '2021-11-18 07:24:31'),
(58, 'Smith', 'For me an excellent tablet to operate considering I have a iPad ? I the option of having a way to add more storage once again considering not able easily add storage to my iPad !', 72, 1, NULL, 1, '2021-11-18 07:17:49', '2021-11-18 07:21:59'),
(59, 'Haleey', 'I had another Samsung tablet before and I\'m very happy with, so I got another.', 72, 1, NULL, 1, '2021-11-18 07:18:12', '2021-11-18 07:21:46'),
(61, 'Admin', 'Thank you so much', 72, 1, 59, NULL, '2021-11-18 07:21:46', '2021-11-18 07:21:46'),
(62, 'Admin', 'Thank you so much', 72, 1, 58, NULL, '2021-11-18 07:21:59', '2021-11-18 07:21:59'),
(63, 'Unistore', 'Thank you very much', 72, 1, 57, NULL, '2021-11-18 07:24:31', '2021-11-18 07:24:31'),
(64, 'Emilly', 'My son luv it ,so do I. Gud quality.i wil buy it again as a gift', 71, 1, NULL, 1, '2021-11-18 07:26:23', '2021-11-18 07:26:48'),
(65, 'Unistore', 'Thank you very much', 71, 1, 64, NULL, '2021-11-18 07:26:48', '2021-11-18 07:26:48'),
(66, 'Anh Thư', 'I like this PC especially that it is compatible with windows 11 , and I would have given 5 stars but it has three things I found annoying, but not deal breakers:', 76, 1, NULL, 1, '2021-11-20 05:01:24', '2021-11-20 05:02:22'),
(67, 'Unistore', 'Thank you Anh Thu', 76, 1, 66, NULL, '2021-11-20 05:02:22', '2021-11-20 05:02:22'),
(68, 'Anh Thư', 'I like this PC especially that it is compatible with windows 11 , and I would have given 5 stars but it has three things I found annoying, but not deal breakers:', 75, 1, NULL, NULL, '2021-11-20 05:03:15', '2021-11-20 05:06:09'),
(69, 'Anh Thư', 'I like this PC especially that it is compatible with windows 11 , and I would have given 5 stars but it has three things I found annoying, but not deal breakers:', 75, 1, NULL, NULL, '2021-11-20 05:05:14', '2021-11-20 05:06:00'),
(71, 'Nguyễn Quang', 'My entry to Apple’s ecosystem started with an iphone , which motivated me to buy a mac just to get a feel of it.', 78, 1, NULL, NULL, '2021-11-20 05:12:08', '2021-11-20 06:57:57'),
(72, 'Nguyễn Quang', 'My entry to Apple’s ecosystem started with an iphone , which motivated me to buy a mac just to get a feel of it.', 78, 1, NULL, NULL, '2021-11-20 05:13:02', '2021-11-20 05:13:31'),
(73, 'Nguyễn Quang', 'I was a first grader when it came to anything tech and was afraid to buy a laptop for that reason. As an Art Instructor, during COVID, unique teaching methods had to be considered and used and I had to get into the modern way of doing things.', 78, 1, NULL, 1, '2021-11-20 05:13:15', '2021-11-29 07:13:03'),
(74, 'Thu Trang', 'The best laptop 2021', 84, 1, NULL, NULL, '2021-11-20 20:40:49', '2021-12-07 03:52:33'),
(76, 'Unistore', 'Thank you', 110, 1, 75, NULL, '2021-11-22 01:46:29', '2021-11-22 01:46:29'),
(77, 'Anh Thư', 'This is a great laptop just what I was looking for didn’t need anything expensive for my needs I am a senior and this works great for me also has good battery time I recommend anyone to buy you will not regret it', 76, 0, NULL, 1, '2021-11-24 05:24:39', '2022-01-14 19:30:16'),
(78, 'Unistore', 'Thank you', 78, 1, 73, NULL, '2021-11-29 07:13:03', '2021-11-29 07:13:03'),
(79, 'Anh Thư', 'This is the best Laptop', 81, 0, NULL, 1, '2021-12-02 08:17:28', '2022-01-14 19:30:55'),
(80, 'Unistore', 'Thank you Anh Thu', 81, 1, 79, NULL, '2021-12-02 08:18:39', '2021-12-02 08:18:39'),
(81, 'User', 'This laptop is just what I was looking for- affordable and great functions.It is lighter and good looking. It has a numpad which is really really helpful me since I keep calculating all the time. Everything runs smoothly on that SSD . Thanks.', 118, 1, NULL, NULL, '2021-12-07 17:46:37', '2022-01-14 07:05:39'),
(83, 'Unistore', 'Thanks you', 105, 1, 82, NULL, '2021-12-16 20:05:40', '2021-12-16 20:05:40'),
(84, 'Unistore', 'Thanks', 76, 1, 77, NULL, '2022-01-14 19:29:32', '2022-01-14 19:29:32'),
(85, 'Van Chuong', 'I bought a computer for my son to learn to use. The computer\'s price/performance ratio. After using it for a few days, the function is very good. Very thin and easy to carry. A good learning computer', 94, 1, NULL, NULL, '2022-01-15 19:18:31', '2022-01-15 19:21:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `feature` int(11) DEFAULT NULL,
  `discount` decimal(10,2) NOT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_codes`
--

INSERT INTO `discount_codes` (`id`, `name`, `code`, `quantity`, `feature`, `discount`, `start_date`, `expiry_date`, `active`, `created_at`, `updated_at`) VALUES
(2, 'Winter discount code', 'WINTER', 0, 1, '5.00', '2021-11-17', '2021-11-20', 1, '2021-11-17 07:14:08', '2021-11-17 07:14:08'),
(3, '12/12 Discount', '12/12', 1231, 1, '2.00', '2021-11-10', '2021-11-30', 1, '2021-11-17 07:21:14', '2021-12-03 05:26:13'),
(4, '32112', '12345', 8, 1, '50.00', '2021-11-11', '2021-11-19', 1, NULL, '2021-11-18 20:36:45'),
(5, 'Van Chuong', 'UNISTORE', 89, 1, '3.00', '2021-11-19', '2021-11-30', 1, '2021-11-18 20:02:24', '2021-11-28 00:01:17'),
(6, 'Laptop Discoun', 'LAPTOP123', 200, 1, '6.00', '2021-11-19', '2021-11-30', 1, '2021-11-18 20:26:28', '2021-11-18 20:26:28'),
(8, 'Sale', '123', 100, 2, '50.00', '2021-11-09', '2021-11-30', 1, NULL, '2021-11-19 05:09:51'),
(9, 'Discount123', 'UNISTORE123', 94, 1, '5.00', '2021-11-20', '2021-12-11', 1, '2021-11-27 01:49:06', '2021-12-07 17:48:09'),
(10, 'Discount 05', 'WINTER1', 120, 2, '30.00', '2021-11-26', '2021-12-11', 1, '2021-11-27 01:49:43', '2021-11-27 01:49:43'),
(11, 'Discount12345', 'UNISTORE12345', 98, 1, '5.00', '2021-12-03', '2021-12-31', 1, '2021-12-03 05:25:38', '2021-12-16 20:03:45'),
(13, 'Discount1/1', 'UNISTORE1/1', 309, 1, '3.00', '2022-01-01', '2022-01-31', 1, '2022-01-14 19:45:35', '2022-01-15 19:16:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fa_q_s`
--

CREATE TABLE `fa_q_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `mail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fa_q_s`
--

INSERT INTO `fa_q_s` (`id`, `question`, `answer`, `mail`, `created_at`, `updated_at`) VALUES
(1, 'How much should I bid?', 'Unistore is great for finding deals, as long as you know what you\'re looking for and how much the item is worth. Having that information is vital to placing bids in correct amount and saving lots of money.', 'admin@localhost.com', '2022-01-15 03:44:07', '2022-01-15 03:44:07'),
(2, 'What should I do if the item is defective/broken/wrong?', 'The first thing to do is to double check the item - make sure it actually is broken. You\'ll probably need to go over the item description on eBay to verify that it didn\'t arrive as promised. Next, contact the seller directly and describe the issue with the item.', 'duyuyen@localhost.com', '2022-01-15 05:09:09', '2022-01-15 05:09:09'),
(3, 'What\'s the best way to find my favorite items?', 'Unistore is great for finding deals, as long as you know what you\'re looking for and how much the item is worth. Having that information is vital to placing bids in correct amount and saving lots of money.', 'lvchuong.20it12@vku.udn.vn', '2022-01-15 05:10:41', '2022-01-15 04:06:49'),
(4, 'What\'s a good shipping rate/method?', 'If possible, check with the seller to ask how they\'ll pack the item. I once received a used laptop that was literally scotch-taped into a used, ripped, USPS priority box that was too small so part of the computer was sticking out - with no padding what-so-ever. If you\'re getting breakable items, make sure the seller will pack it correctly.', 'lvchuong.20it12@vku.udn.vn', '2022-01-15 12:11:14', '2022-01-15 12:11:14'),
(5, 'What should I use to pay?', 'Although we\'ve heard of issues with PayPal, we still recommend them for nearly all purchases. Nearly all sellers accept PayPal payment, and many purchases are automatically covered for fraud protection. Please check PayPal.com for details on their account protection tips and fraud protection services.', 'lvchuong.20it12@vku.udn.vn', '2022-01-15 12:11:42', '2022-01-15 12:11:42'),
(6, 'What should I do if the item is defective/broken/wrong?', 'The first thing to do is to double check the item - make sure it actually is broken. You\'ll probably need to go over the item description on eBay to verify that it didn\'t arrive as promised. Next, contact the seller directly and describe the issue with the item.', 'mocnhi@localhost.com', '2022-01-15 12:12:10', '2022-01-15 12:12:10'),
(7, 'Can this laptop be used in India?', 'Absolutely yes. It can be used any part of the world', 'user@localhost.com', '2022-01-15 12:13:28', '2022-01-15 12:13:28'),
(8, 'Is this a good computer for basic office functions such as excel and word? Also, will my companies Outlook work on this computer?', 'This model comes with a Chrome OS, which you will be able to download from Google Play Store. You can also use Google\'s built-in word/excel application.', 'user@localhost.com', '2022-01-15 12:14:48', '2022-01-15 12:14:48'),
(9, 'Can I use a wireless mouse?', 'Yes. It has been years since I have seen a computer that can\'t use a wireless mouse.\r\n\r\nThat\'s why I don\'t have a \"pad\" device except for listening to music. I never change the station.', 'mocnhi@localhost.com', '2022-01-15 12:16:31', '2022-01-15 12:16:31'),
(10, 'Where can i find info on the web cam in computer ?', NULL, 'duyuyen@localhost.com', '2022-01-15 12:19:16', '2022-01-15 12:19:16'),
(11, 'Is there any external monitor recommendation for this laptop? I like the setup with two monitors for working from home.', NULL, 'lvchuong.20it12@vku.udn.vn', '2022-01-15 19:19:01', '2022-01-15 19:19:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`, `description`, `slug`, `active`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Hp', 'Laptop Hp', 'hp', 1, '/storage/uploads/products/2021-11-15/1024px-HP_logo_2012.svg.png', '2021-11-14 22:19:35', '2021-11-15 02:16:03'),
(2, 'Dell', 'Laptop Dell', 'dell', 1, '/storage/uploads/products/2021-11-15/1200px-Dell_Logo.svg.png', '2021-11-14 22:31:45', '2021-11-14 22:31:45'),
(6, 'Samsung', 'Samsung', 'samsung', 1, '/storage/uploads/products/2021-11-15/Samsung-Logo.png', '2021-11-15 02:45:04', '2021-11-15 02:45:04'),
(7, 'Apple', 'Apple', 'apple', 1, '/storage/uploads/products/2021-11-16/294700_apple_icon.png', '2021-11-15 02:49:56', '2021-11-15 21:50:34'),
(8, 'Asus', 'Laptop Asus', 'asus', 1, '/storage/uploads/products/2021-11-15/asus--v1.png', '2021-11-15 02:52:52', '2021-11-15 03:06:43'),
(9, 'Lenovo', '', 'lenovo', 1, '/storage/uploads/products/2021-11-15/lenovo-memorial-day-sale.png', '2021-11-15 02:53:40', '2021-11-15 03:10:16'),
(10, 'Acer', '', 'acer', 1, '/storage/uploads/products/2021-11-15/acer-logo-black-and-white.png', '2021-11-15 02:54:26', '2021-11-15 03:00:06'),
(11, 'MSI', '', 'msi', 1, '/storage/uploads/products/2021-11-15/plus-icon.png', '2021-11-15 02:55:02', '2021-11-15 03:07:57'),
(12, 'LG', '', 'lg', 1, '/storage/uploads/products/2021-11-15/lg_logo_PNG13.png', '2021-11-15 02:55:18', '2021-11-15 03:01:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_11_02_051552_create_categories_table', 1),
(11, '2021_11_02_092956_create_categories_table', 2),
(12, '2021_11_04_082208_create_products_table', 2),
(13, '2021_11_05_132936_create_sliders_table', 3),
(14, '2021_11_06_092919_create_articles_table', 4),
(15, '2021_11_08_031404_create_product_images_table', 5),
(16, '2021_11_13_143616_create_oders_table', 6),
(17, '2021_11_13_150042_create_payments_table', 7),
(18, '2021_11_13_150121_create_oder_details_table', 7),
(19, '2021_11_14_121301_add_facebook_id_in_users_table', 8),
(30, '2021_11_15_050806_create_manufacturers_table', 9),
(31, '2021_11_15_151213_create_comments_table', 10),
(32, '2021_11_17_132554_create_discount_codes_table', 11),
(33, '2021_11_22_093132_create_statisticals_table', 12),
(34, '2021_11_23_023047_create_visitors_table', 13),
(35, '2021_11_23_135021_alter_table_product_images', 14),
(36, '2022_01_14_144145_create_sessions_table', 14),
(37, '2022_01_15_015831_create_sessions_table', 15),
(38, '2022_01_15_032033_create_fa_q_s_table', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oders`
--

CREATE TABLE `oders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `total_price` float NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_status` int(11) DEFAULT NULL,
  `cancel_reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oders`
--

INSERT INTO `oders` (`id`, `code`, `customer_id`, `payment_id`, `address`, `remark`, `total_price`, `status`, `discount`, `cancel_status`, `cancel_reason`, `created_at`, `updated_at`) VALUES
(55, NULL, 2, 74, 'Việt Nam,Huế,Hùng Vương,1212,63300', '', 314.99, 'Canceled', NULL, 1, 'Tôi không muốn mua nữa', '2021-11-17 07:54:01', '2021-11-19 02:10:16'),
(56, NULL, 6, 75, 'Việt Nam,Đà nẵng,2/9,12,68000', '', 314.99, 'Completed', NULL, NULL, NULL, '2021-11-17 07:54:40', '2021-11-24 06:00:53'),
(57, NULL, 1, 76, 'Việt Nam,Huế,2/9,25,68000', '', 535.9, 'Canceled', '123', 1, 'adsdad', '2021-11-17 20:03:31', '2021-11-20 01:41:58'),
(58, NULL, 6, 77, 'Việt Nam,Đà Nẵng,Trường Chinh,36,6800', '', 848.41, 'Completed', '12345', NULL, NULL, '2021-11-17 20:06:08', '2021-11-28 00:02:22'),
(59, NULL, 7, 78, 'Việt Nam,Huế,Hùng Vương,85,63300', '', 891.43, 'Completed', '12345', NULL, NULL, '2021-11-17 20:07:29', '2021-11-23 05:03:46'),
(60, NULL, 7, 79, 'Việt Nam,Hà Nội,Phố Hoa,12,6800', '', 261.45, 'Completed', '12345', NULL, NULL, '2021-11-17 20:53:14', '2021-11-18 21:27:40'),
(61, NULL, 5, 80, 'Việt Nam,Huế,Hùng Vương,45,63300', '', 526.44, 'Completed', '123', NULL, NULL, '2021-11-17 21:49:34', '2021-11-18 21:28:25'),
(62, NULL, 5, 81, 'Việt Nam,Huế,Lê Duẫn,50,63300', '', 891.43, 'Completed', '123', NULL, NULL, '2021-11-17 22:05:41', '2021-11-22 06:58:45'),
(63, NULL, 9, 82, 'Việt Nam,Huế,Lê Duẫn,25,6800', '', 1089.76, 'Completed', 'UNISTORE', NULL, NULL, '2021-11-20 03:48:37', '2021-11-28 00:02:28'),
(64, NULL, 10, 85, 'Việt Nam,Huế,Lê Duẫn,45,6800', '', 5828.55, 'Completed', NULL, NULL, NULL, '2021-11-20 20:48:50', '2021-11-22 06:56:52'),
(65, NULL, 12, 86, 'Việt Nam,Huế,Hùng Vương,12,63300', 'đàara', 4606.67, 'Completed', 'UNISTORE', NULL, NULL, '2021-11-22 01:27:45', '2021-11-22 06:57:49'),
(66, NULL, 12, 87, 'Việt Nam,Huế,Hùng Vương,12,63300', 'đàara', 4606.67, 'Completed', 'UNISTORE', NULL, NULL, '2021-11-22 01:28:30', '2021-11-22 01:39:58'),
(67, NULL, 1, 88, 'Việt Nam,Đà nẵng,2/9,12,68000', '', 1118.31, 'Canceled', 'UNISTORE', 1, 'jadjjasdajfasdas', '2021-11-22 01:47:14', '2021-11-29 07:12:00'),
(68, NULL, 1, 89, 'Việt Nam,Đà nẵng,2/9,121,68000', '', 1320.9, 'Completed', NULL, NULL, NULL, '2021-11-22 01:47:36', '2021-11-23 02:48:17'),
(69, NULL, 9, 90, 'Việt Nam,Đà Nẵng,Trường Chinh,12,6800', '', 2401.35, 'Completed', NULL, NULL, NULL, '2021-11-23 07:39:03', '2021-11-23 19:30:29'),
(70, NULL, 2, 91, 'Việt Nam,Huế,Hùng Vương,52,63300', '', 1118.31, 'Completed', 'UNISTORE', NULL, NULL, '2021-11-23 19:30:00', '2021-11-23 19:30:41'),
(71, NULL, 9, 92, 'Việt Nam,Huế,Lê Duẫn,52,6800', '', 1567.43, 'Completed', 'UNISTORE', NULL, NULL, '2021-11-24 05:38:12', '2021-11-24 05:59:09'),
(72, NULL, 9, 93, 'Việt Nam,Đà nẵng,2/9,12,68000', '', 620.25, 'Completed', 'UNISTORE', NULL, NULL, '2021-11-24 05:52:47', '2021-11-24 05:59:16'),
(73, NULL, 1, 94, 'Việt Nam,Huế,Hùng Vương,12,63300', '', 2089.96, 'Completed', 'UNISTORE', NULL, NULL, '2021-11-24 06:00:13', '2021-11-24 06:00:24'),
(74, NULL, 2, 95, 'Việt Nam,Đà nẵng,2/9,12,68000', '', 1758.95, 'Completed', 'UNISTORE', NULL, NULL, '2021-11-26 21:00:30', '2021-11-26 21:21:36'),
(75, NULL, 2, 96, 'Việt Nam,Hà Nội,Phố Hoa,2,6800', '', 1898.38, 'Completed', NULL, NULL, NULL, '2021-11-26 21:00:55', '2021-11-28 00:01:32'),
(76, NULL, 11, 97, 'Việt Nam,Đà Nẵng,Trường Chinh,12,6800', '', 2788.79, 'Completed', NULL, NULL, NULL, '2021-11-26 21:01:35', '2021-11-26 21:02:31'),
(77, NULL, 11, 98, 'Việt Nam,Huế,Lê Duẫn,12,6800', '', 1988.11, 'Completed', 'UNISTORE', NULL, NULL, '2021-11-26 21:02:01', '2021-11-26 21:02:27'),
(78, NULL, 1, 99, 'Việt Nam,Huế,Hùng Vương,45,63300', '', 2683.8, 'Completed', NULL, NULL, NULL, '2021-11-26 21:20:30', '2021-11-26 21:21:27'),
(79, NULL, 1, 100, 'Việt Nam,Đà Nẵng,Trường Chinh,43,6800', '', 1373.4, 'Completed', NULL, NULL, NULL, '2021-11-26 21:20:47', '2021-11-28 00:02:01'),
(80, NULL, 1, 101, 'Việt Nam,Huế,Hùng Vương,45,63300', '', 2641.79, 'Completed', NULL, NULL, NULL, '2021-11-26 21:21:13', '2021-11-28 00:02:06'),
(81, NULL, 1, 102, 'Việt Nam,Huế,Lê Duẫn,34,6800', '', 2197.92, 'Completed', 'UNISTORE', NULL, NULL, '2021-11-28 00:01:17', '2021-11-28 00:02:11'),
(82, NULL, 9, 103, 'Việt Nam,Đà nẵng,2/9,45,68000', '', 2683.8, 'Completed', NULL, NULL, NULL, '2021-11-29 01:01:06', '2021-11-29 01:01:56'),
(83, NULL, 12, 104, 'Việt Nam,Đà Nẵng,Trường Chinh,34,6800', '', 3120.59, 'Completed', NULL, NULL, NULL, '2021-11-30 01:16:00', '2021-11-30 01:17:23'),
(84, NULL, 12, 105, 'Việt Nam,Đà Nẵng,Trường Chinh,43,6800', '', 1739.85, 'Completed', NULL, NULL, NULL, '2021-11-30 01:16:20', '2021-12-03 20:34:46'),
(85, NULL, 12, 106, 'Việt Nam,Huế,Lê Duẫn,23,6800', '', 1373.4, 'Completed', NULL, NULL, NULL, '2021-11-30 01:16:34', '2021-11-30 01:17:31'),
(86, NULL, 12, 107, 'Việt Nam,Hà Nội,Phố Hoa,23,6800', '', 3738, 'Completed', NULL, NULL, NULL, '2021-11-30 01:17:02', '2021-12-02 02:44:12'),
(87, NULL, 11, 108, 'Việt Nam,Đà Nẵng,Trường Chinh,45,6800', '', 3850.32, 'Completed', NULL, NULL, NULL, '2021-12-02 05:53:53', '2021-12-02 07:52:44'),
(88, NULL, 11, 109, 'Việt Nam,Huế,Lê Duẫn,56,6800', '', 7429.74, 'Completed', NULL, NULL, NULL, '2021-12-02 05:54:34', '2021-12-03 03:07:13'),
(89, NULL, 11, 110, 'Việt Nam,Đà nẵng,2/9,45,68000', '', 6181.35, 'Completed', NULL, NULL, NULL, '2021-12-03 03:05:42', '2021-12-03 03:07:24'),
(90, NULL, 11, 111, 'Việt Nam,Đà Nẵng,Trường Chinh,56,6800', '', 11957.4, 'Completed', NULL, NULL, NULL, '2021-12-03 03:06:46', '2021-12-03 20:16:43'),
(91, NULL, 13, 112, 'Việt Nam,Huế,Lê Duẫn,43,6800', '', 7831.28, 'Completed', 'UNISTORE123', NULL, NULL, '2021-12-03 07:08:19', '2021-12-03 20:33:26'),
(92, NULL, 13, 113, 'Việt Nam,Huế,Hùng Vương,4324,63300', '', 8721.15, 'Completed', 'UNISTORE123', NULL, NULL, '2021-12-03 07:15:09', '2021-12-03 20:16:57'),
(93, NULL, 13, 114, 'Việt Nam,Hà Nội,Phố Hoa,432,6800', '', 9715.66, 'Completed', 'UNISTORE123', NULL, NULL, '2021-12-03 20:15:47', '2021-12-06 05:21:50'),
(94, NULL, 12, 115, 'Việt Nam,Đà Nẵng,Trường Chinh,123,6800', '', 8820.9, 'Completed', 'UNISTORE12345', NULL, NULL, '2021-12-05 02:05:05', '2021-12-05 02:06:21'),
(95, NULL, 13, 116, 'Việt Nam,Huế,Lê Duẫn,32,6800', '', 7729.62, 'Completed', 'UNISTORE123', NULL, NULL, '2021-12-06 05:21:17', '2021-12-06 05:21:41'),
(96, NULL, 1, 117, 'Việt Nam,Hà Nội,Phố Hoa,312,6800', '', 12040.3, 'Completed', NULL, NULL, NULL, '2021-12-06 07:32:48', '2021-12-07 01:07:46'),
(97, NULL, 13, 118, 'Việt Nam,Đà Nẵng,Trường Chinh,1212,6800', '', 5120.13, 'Completed', 'UNISTORE123', NULL, NULL, '2021-12-07 01:05:42', '2021-12-07 01:07:53'),
(98, NULL, 13, 119, 'Việt Nam,Hà Nội,Phố Hoa,34,6800', '', 418.95, 'Completed', NULL, NULL, NULL, '2021-12-07 01:06:50', '2021-12-07 17:52:42'),
(99, NULL, 2, 120, 'Việt Nam,Đà Nẵng,Trường Chinh,56,6800', '', 1196.96, 'Canceled', 'UNISTORE123', 1, 'This laptop is just what I was looking for- affordable and great functions.It is lighter and good looking. It has a numpad which is really really helpful me since I keep calculating all the time. Everything runs smoothly on that SSD . Thanks.', '2021-12-07 17:48:10', '2021-12-16 20:10:01'),
(100, NULL, 2, 121, 'Việt Nam,Huế,Hùng Vương,45,63300', 'ghi chus', 1572.9, 'Completed', NULL, NULL, NULL, '2021-12-07 17:48:34', '2021-12-16 20:09:30'),
(101, NULL, 1, 122, 'Việt Nam,Đà nẵng,2/9,1212,68000', '', 2728.16, 'Completed', 'UNISTORE12345', NULL, NULL, '2021-12-16 20:03:45', '2022-01-14 19:28:38'),
(102, NULL, 1, 123, 'Việt Nam,Đà nẵng,2/9,12,68000', '', 313.95, 'Payment', NULL, 2, NULL, '2021-12-16 20:04:04', '2022-01-15 19:40:46'),
(103, NULL, 2, 124, 'Việt Nam,Huế,Lê Duẫn,52,6800', '', 1310.41, 'Completed', NULL, NULL, NULL, '2022-01-13 21:28:30', '2022-01-14 06:37:31'),
(104, NULL, 9, 125, 'Việt Nam,Đà Nẵng,Trường Chinh,12,6800', '', 2999.84, 'Completed', NULL, NULL, NULL, '2022-01-14 06:40:10', '2022-01-14 06:41:45'),
(105, NULL, 9, 126, 'Việt Nam,Đà nẵng,2/9,23,68000', '', 5556.6, 'Completed', NULL, NULL, NULL, '2022-01-14 06:40:45', '2022-01-14 06:41:49'),
(107, NULL, 15, 128, 'Việt Nam,Huế,Lê Duẫn,31,6800', '', 1571.85, 'Completed', NULL, NULL, NULL, '2022-01-14 19:57:25', '2022-01-15 04:28:10'),
(108, NULL, 15, 129, 'Việt Nam,Đà Nẵng,Trường Chinh,122,6800', '', 325.49, 'Payment', NULL, NULL, NULL, '2022-01-14 20:04:40', '2022-01-14 20:05:03'),
(109, NULL, 12, 130, 'Việt Nam,Hà Nội,Phố Hoa,23,6800', '', 7632.63, 'Completed', 'UNISTORE1/1', NULL, NULL, '2022-01-15 04:27:35', '2022-01-15 04:28:04'),
(110, NULL, 12, 131, 'Việt Nam,Đà Nẵng,Trường Chinh,1212,6800', '', 3660.48, 'Pending', 'UNISTORE1/1', 2, 'Khong muon mua nua', '2022-01-15 19:16:58', '2022-01-15 19:18:06'),
(111, NULL, 12, 132, 'Việt Nam,Đà nẵng,2/9,12,68000', '', 325.49, 'Payment', NULL, NULL, NULL, '2022-01-15 19:17:12', '2022-01-15 19:17:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder_details`
--

CREATE TABLE `oder_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `oder_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `sale_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oder_details`
--

INSERT INTO `oder_details` (`id`, `oder_id`, `product_id`, `product_name`, `product_price`, `sale_quantity`, `created_at`, `updated_at`) VALUES
(65, 55, 74, 'Laptop Dell Gaming G3 15 i7 10750H', '299.99', 1, '2021-11-17 07:54:01', '2021-11-17 07:54:01'),
(66, 56, 74, 'Laptop Dell Gaming G3 15 i7 10750H', '299.99', 1, '2021-11-17 07:54:40', '2021-11-17 07:54:40'),
(67, 57, 72, 'iPad Pro M1 11 inch Wifi Cellular 128GB', '299.00', 1, '2021-11-17 20:03:31', '2021-11-17 20:03:31'),
(68, 57, 71, 'Samsung Galaxy Tab S7 FE 4G', '259.00', 1, '2021-11-17 20:03:31', '2021-11-17 20:03:31'),
(69, 58, 72, 'iPad Pro M1 11 inch Wifi Cellular 128GB', '299.00', 1, '2021-11-17 20:06:08', '2021-11-17 20:06:08'),
(70, 58, 71, 'Samsung Galaxy Tab S7 FE 4G', '259.00', 1, '2021-11-17 20:06:08', '2021-11-17 20:06:08'),
(71, 58, 73, 'Laptop HP 340s G7 i5 1035G1', '299.99', 1, '2021-11-17 20:06:08', '2021-11-17 20:06:08'),
(72, 59, 73, 'Laptop HP 340s G7 i5 1035G1', '299.99', 1, '2021-11-17 20:07:29', '2021-11-17 20:07:29'),
(73, 59, 74, 'Laptop Dell Gaming G3 15 i7 10750H', '299.99', 1, '2021-11-17 20:07:29', '2021-11-17 20:07:29'),
(74, 59, 72, 'iPad Pro M1 11 inch Wifi Cellular 128GB', '299.00', 1, '2021-11-17 20:07:29', '2021-11-17 20:07:29'),
(75, 60, 72, 'iPad Pro M1 11 inch Wifi Cellular 128GB', '299.00', 1, '2021-11-17 20:53:14', '2021-11-17 20:53:14'),
(76, 61, 72, 'iPad Pro M1 11 inch Wifi Cellular 128GB', '299.00', 1, '2021-11-17 21:49:34', '2021-11-17 21:49:34'),
(77, 61, 73, 'Laptop HP 340s G7 i5 1035G1', '299.99', 1, '2021-11-17 21:49:34', '2021-11-17 21:49:34'),
(78, 62, 73, 'Laptop HP 340s G7 i5 1035G1', '299.99', 1, '2021-11-17 22:05:41', '2021-11-17 22:05:41'),
(79, 62, 72, 'iPad Pro M1 11 inch Wifi Cellular 128GB', '299.00', 1, '2021-11-17 22:05:41', '2021-11-17 22:05:41'),
(80, 62, 74, 'Laptop Dell Gaming G3 15 i7 10750H', '299.99', 1, '2021-11-17 22:05:41', '2021-11-17 22:05:41'),
(81, 63, 76, 'Laptop  HP - Stream 11.6\" Intel Celeron 64GB', '459.99', 1, '2021-11-20 03:48:37', '2021-11-20 03:48:37'),
(82, 63, 75, 'Galaxy Book Flex2 Alpha i5 8GB 256GB', '309.99', 1, '2021-11-20 03:48:37', '2021-11-20 03:48:37'),
(83, 63, 73, 'Laptop HP 340s G7 i5 1035G1', '299.99', 1, '2021-11-20 03:48:37', '2021-11-20 03:48:37'),
(84, 64, 120, '2021 Apple 12.9-inch iPad Pro (Wi‑Fi, 256GB)', '499.00', 3, '2021-11-20 20:48:50', '2021-11-20 20:48:50'),
(85, 64, 119, 'Apple MacBook Pro Apple M1 Pro 512GB SSD', '999.00', 2, '2021-11-20 20:48:50', '2021-11-20 20:48:50'),
(86, 64, 118, 'ASUS VivoBook 15 Core i5-1135G7', '899.00', 1, '2021-11-20 20:48:50', '2021-11-20 20:48:50'),
(87, 64, 117, 'Lenovo IdeaPad Gaming 3 AMD Ryzen 5', '359.00', 1, '2021-11-20 20:48:50', '2021-11-20 20:48:50'),
(88, 64, 84, 'ASUS ZenBook 14 Ultra-Slim Laptop', '399.00', 2, '2021-11-20 20:48:50', '2021-11-20 20:48:50'),
(89, 65, 117, 'Lenovo IdeaPad Gaming 3 AMD Ryzen 5', '359.00', 1, '2021-11-22 01:27:45', '2021-11-22 01:27:45'),
(90, 65, 113, 'LG Gram 14T90P - 14\" WUXGA  i7 1165G7 CPU', '599.00', 2, '2021-11-22 01:27:45', '2021-11-22 01:27:45'),
(91, 65, 114, 'MSI Creator 15 Professional Laptop RTX 3060', '459.00', 1, '2021-11-22 01:27:45', '2021-11-22 01:27:45'),
(92, 65, 115, 'LG Gram 16T90P 16\" WQXGA i5', '359.00', 1, '2021-11-22 01:27:45', '2021-11-22 01:27:45'),
(93, 65, 116, 'Lenovo Chromebook Flex 5 13\" Laptop, FHD', '350.00', 1, '2021-11-22 01:27:45', '2021-11-22 01:27:45'),
(94, 65, 118, 'ASUS VivoBook 15 Core i5-1135G7', '899.00', 2, '2021-11-22 01:27:45', '2021-11-22 01:27:45'),
(95, 66, 117, 'Lenovo IdeaPad Gaming 3 AMD Ryzen 5', '359.00', 1, '2021-11-22 01:28:30', '2021-11-22 01:28:30'),
(96, 66, 113, 'LG Gram 14T90P - 14\" WUXGA  i7 1165G7 CPU', '599.00', 2, '2021-11-22 01:28:30', '2021-11-22 01:28:30'),
(97, 66, 114, 'MSI Creator 15 Professional Laptop RTX 3060', '459.00', 1, '2021-11-22 01:28:30', '2021-11-22 01:28:30'),
(98, 66, 115, 'LG Gram 16T90P 16\" WQXGA i5', '359.00', 1, '2021-11-22 01:28:30', '2021-11-22 01:28:30'),
(99, 66, 116, 'Lenovo Chromebook Flex 5 13\" Laptop, FHD', '350.00', 1, '2021-11-22 01:28:30', '2021-11-22 01:28:30'),
(100, 66, 118, 'ASUS VivoBook 15 Core i5-1135G7', '899.00', 2, '2021-11-22 01:28:30', '2021-11-22 01:28:30'),
(101, 67, 121, '2019 Apple iPad (10.2-inch, Wi-Fi, 128GB)', '599.00', 1, '2021-11-22 01:47:14', '2021-11-22 01:47:14'),
(102, 67, 120, '2021 Apple 12.9-inch iPad Pro (Wi‑Fi, 256GB)', '499.00', 1, '2021-11-22 01:47:14', '2021-11-22 01:47:14'),
(103, 68, 118, 'ASUS VivoBook 15 Core i5-1135G7', '899.00', 1, '2021-11-22 01:47:36', '2021-11-22 01:47:36'),
(104, 68, 117, 'Lenovo IdeaPad Gaming 3 AMD Ryzen 5', '359.00', 1, '2021-11-22 01:47:36', '2021-11-22 01:47:36'),
(105, 69, 97, 'ASUS Laptop L410 Ultra  Celeron N4020', '799.00', 1, '2021-11-23 07:39:03', '2021-11-23 07:39:03'),
(106, 69, 105, '2020 Apple MacBook Air Laptop: Apple M1 Chip', '889.00', 1, '2021-11-23 07:39:03', '2021-11-23 07:39:03'),
(107, 69, 113, 'LG Gram 14T90P - 14\" WUXGA  i7 1165G7 CPU', '599.00', 1, '2021-11-23 07:39:03', '2021-11-23 07:39:03'),
(108, 70, 108, 'SAMSUNG Galaxy Tab S7 11-inch 128GB', '299.00', 1, '2021-11-23 19:30:00', '2021-11-23 19:30:00'),
(109, 70, 97, 'ASUS Laptop L410 Ultra  Celeron N4020', '799.00', 1, '2021-11-23 19:30:00', '2021-11-23 19:30:00'),
(110, 71, 75, 'Galaxy Book Flex2 Alpha i5 8GB 256GB', '309.99', 4, '2021-11-24 05:38:12', '2021-11-24 05:38:12'),
(111, 71, 99, 'ASUS ROG Strix G15 (2021) Gaming Laptop', '299.00', 1, '2021-11-24 05:38:12', '2021-11-24 05:38:12'),
(112, 72, 75, 'Galaxy Book Flex2 Alpha i5 8GB 256GB', '309.99', 1, '2021-11-24 05:52:47', '2021-11-24 05:52:47'),
(113, 72, 99, 'ASUS ROG Strix G15 (2021) Gaming Laptop', '299.00', 1, '2021-11-24 05:52:47', '2021-11-24 05:52:47'),
(114, 73, 89, 'Lenovo Chromebook Flex 3 11\" Laptop', '299.00', 1, '2021-11-24 06:00:13', '2021-11-24 06:00:13'),
(115, 73, 88, 'HP 15 Laptop, AMD Ryzen 5 5500U', '455.00', 1, '2021-11-24 06:00:13', '2021-11-24 06:00:13'),
(116, 73, 84, 'ASUS ZenBook 14 Ultra-Slim Laptop', '399.00', 1, '2021-11-24 06:00:13', '2021-11-24 06:00:13'),
(117, 73, 118, 'ASUS VivoBook 15 Core i5-1135G7', '899.00', 1, '2021-11-24 06:00:13', '2021-11-24 06:00:13'),
(118, 74, 110, 'SAMSUNG Galaxy Tab  Android Tablet 64GB', '559.00', 1, '2021-11-26 21:00:30', '2021-11-26 21:00:30'),
(119, 74, 116, 'Lenovo Chromebook Flex 5 13\" Laptop, FHD', '350.00', 1, '2021-11-26 21:00:30', '2021-11-26 21:00:30'),
(120, 74, 112, 'MSI Summit E13 Flip EVO Professional Laptop', '359.00', 1, '2021-11-26 21:00:30', '2021-11-26 21:00:30'),
(121, 74, 114, 'MSI Creator 15 Professional Laptop RTX 3060', '459.00', 1, '2021-11-26 21:00:30', '2021-11-26 21:00:30'),
(122, 75, 79, 'Laptop Dell XPS 13 2-in-1 i5-1020', '599.00', 1, '2021-11-26 21:00:55', '2021-11-26 21:00:55'),
(123, 75, 75, 'Galaxy Book Flex2 Alpha i5 8GB 256GB', '309.99', 1, '2021-11-26 21:00:55', '2021-11-26 21:00:55'),
(124, 75, 82, 'Acer Nitro 5 AN515-55-53E5 Gaming Laptop', '299.99', 1, '2021-11-26 21:00:55', '2021-11-26 21:00:55'),
(125, 75, 94, '2022 ASUS F512DA VivoBook Laptop', '599.00', 1, '2021-11-26 21:00:55', '2021-11-26 21:00:55'),
(126, 76, 77, 'Laptop  Lenovo  Chromebook  32GB', '459.99', 1, '2021-11-26 21:01:35', '2021-11-26 21:01:35'),
(127, 76, 84, 'ASUS ZenBook 14 Ultra-Slim Laptop', '399.00', 1, '2021-11-26 21:01:35', '2021-11-26 21:01:35'),
(128, 76, 113, 'LG Gram 14T90P - 14\" WUXGA  i7 1165G7 CPU', '599.00', 1, '2021-11-26 21:01:35', '2021-11-26 21:01:35'),
(129, 76, 98, 'Samsung Chromebook 4 + Chrome OS', '599.00', 1, '2021-11-26 21:01:35', '2021-11-26 21:01:35'),
(130, 76, 93, 'MSI GS75 Stealth Gaming Laptop i7', '599.00', 1, '2021-11-26 21:01:35', '2021-11-26 21:01:35'),
(131, 77, 89, 'Lenovo Chromebook Flex 3 11\" Laptop', '299.00', 1, '2021-11-26 21:02:01', '2021-11-26 21:02:01'),
(132, 77, 88, 'HP 15 Laptop, AMD Ryzen 5 5500U', '455.00', 1, '2021-11-26 21:02:01', '2021-11-26 21:02:01'),
(133, 77, 118, 'ASUS VivoBook 15 Core i5-1135G7', '899.00', 1, '2021-11-26 21:02:01', '2021-11-26 21:02:01'),
(134, 77, 108, 'SAMSUNG Galaxy Tab S7 11-inch 128GB', '299.00', 1, '2021-11-26 21:02:01', '2021-11-26 21:02:01'),
(135, 78, 104, 'Samsung Electronics Galaxy Book Pro', '999.00', 1, '2021-11-26 21:20:30', '2021-11-26 21:20:30'),
(136, 78, 114, 'MSI Creator 15 Professional Laptop RTX 3060', '459.00', 1, '2021-11-26 21:20:30', '2021-11-26 21:20:30'),
(137, 78, 107, 'MSI Creator Z16 Professional Laptop', '699.00', 1, '2021-11-26 21:20:30', '2021-11-26 21:20:30'),
(138, 78, 81, 'Samsung Electronics Galaxy Chromebook', '399.00', 1, '2021-11-26 21:20:30', '2021-11-26 21:20:30'),
(139, 79, 116, 'Lenovo Chromebook Flex 5 13\" Laptop, FHD', '350.00', 1, '2021-11-26 21:20:47', '2021-11-26 21:20:47'),
(140, 79, 96, 'MSI Modern 14 Ultra  i5-10210U', '499.00', 1, '2021-11-26 21:20:48', '2021-11-26 21:20:48'),
(141, 79, 109, '2021 Samsung Galaxy Tab A7 10.4’’', '459.00', 1, '2021-11-26 21:20:48', '2021-11-26 21:20:48'),
(142, 80, 116, 'Lenovo Chromebook Flex 5 13\" Laptop, FHD', '350.00', 1, '2021-11-26 21:21:13', '2021-11-26 21:21:13'),
(143, 80, 96, 'MSI Modern 14 Ultra  i5-10210U', '499.00', 1, '2021-11-26 21:21:13', '2021-11-26 21:21:13'),
(144, 80, 109, '2021 Samsung Galaxy Tab A7 10.4’’', '459.00', 1, '2021-11-26 21:21:13', '2021-11-26 21:21:13'),
(145, 80, 75, 'Galaxy Book Flex2 Alpha i5 8GB 256GB', '309.99', 1, '2021-11-26 21:21:13', '2021-11-26 21:21:13'),
(146, 80, 99, 'ASUS ROG Strix G15 (2021) Gaming Laptop', '299.00', 1, '2021-11-26 21:21:13', '2021-11-26 21:21:13'),
(147, 80, 113, 'LG Gram 14T90P - 14\" WUXGA  i7 1165G7 CPU', '599.00', 1, '2021-11-26 21:21:13', '2021-11-26 21:21:13'),
(148, 81, 110, 'SAMSUNG Galaxy Tab  Android Tablet 64GB', '559.00', 1, '2021-11-28 00:01:17', '2021-11-28 00:01:17'),
(149, 81, 92, 'MSI GL65 Gaming Laptop i5-10300H', '545.00', 1, '2021-11-28 00:01:17', '2021-11-28 00:01:17'),
(150, 81, 88, 'HP 15 Laptop, AMD Ryzen 5 5500U', '455.00', 1, '2021-11-28 00:01:17', '2021-11-28 00:01:17'),
(151, 81, 85, 'LG Gram 16Z90P Laptop  Ultra-Lightweight', '599.00', 1, '2021-11-28 00:01:17', '2021-11-28 00:01:17'),
(152, 82, 92, 'MSI GL65 Gaming Laptop i5-10300H', '545.00', 1, '2021-11-29 01:01:07', '2021-11-29 01:01:07'),
(153, 82, 88, 'HP 15 Laptop, AMD Ryzen 5 5500U', '455.00', 1, '2021-11-29 01:01:07', '2021-11-29 01:01:07'),
(154, 82, 81, 'Samsung Electronics Galaxy Chromebook', '399.00', 1, '2021-11-29 01:01:07', '2021-11-29 01:01:07'),
(155, 82, 117, 'Lenovo IdeaPad Gaming 3 AMD Ryzen 5', '359.00', 1, '2021-11-29 01:01:07', '2021-11-29 01:01:07'),
(156, 82, 87, 'HP 15-inch Laptop, 11th Generation Intel', '499.00', 1, '2021-11-29 01:01:07', '2021-11-29 01:01:07'),
(157, 82, 89, 'Lenovo Chromebook Flex 3 11\" Laptop', '299.00', 1, '2021-11-29 01:01:07', '2021-11-29 01:01:07'),
(158, 83, 110, 'SAMSUNG Galaxy Tab  Android Tablet 64GB', '559.00', 1, '2021-11-30 01:16:00', '2021-11-30 01:16:00'),
(159, 83, 76, 'Laptop  HP - Stream 11.6\" Intel Celeron 64GB', '459.99', 1, '2021-11-30 01:16:01', '2021-11-30 01:16:01'),
(160, 83, 119, 'Apple MacBook Pro Apple M1 Pro 512GB SSD', '999.00', 1, '2021-11-30 01:16:01', '2021-11-30 01:16:01'),
(161, 83, 88, 'HP 15 Laptop, AMD Ryzen 5 5500U', '455.00', 1, '2021-11-30 01:16:01', '2021-11-30 01:16:01'),
(162, 83, 87, 'HP 15-inch Laptop, 11th Generation Intel', '499.00', 1, '2021-11-30 01:16:01', '2021-11-30 01:16:01'),
(163, 84, 84, 'ASUS ZenBook 14 Ultra-Slim Laptop', '399.00', 1, '2021-11-30 01:16:20', '2021-11-30 01:16:20'),
(164, 84, 120, '2021 Apple 12.9-inch iPad Pro (Wi‑Fi, 256GB)', '499.00', 1, '2021-11-30 01:16:20', '2021-11-30 01:16:20'),
(165, 84, 77, 'Laptop  Lenovo  Chromebook  32GB', '459.99', 1, '2021-11-30 01:16:20', '2021-11-30 01:16:20'),
(166, 84, 72, 'iPad Pro M1 11 inch Wifi Cellular 128GB', '299.01', 1, '2021-11-30 01:16:20', '2021-11-30 01:16:20'),
(167, 85, 80, '2021 Apple MacBook Pro Apple M1 Pro chip', '599.00', 1, '2021-11-30 01:16:34', '2021-11-30 01:16:34'),
(168, 85, 116, 'Lenovo Chromebook Flex 5 13\" Laptop, FHD', '350.00', 1, '2021-11-30 01:16:34', '2021-11-30 01:16:34'),
(169, 85, 112, 'MSI Summit E13 Flip EVO Professional Laptop', '359.00', 1, '2021-11-30 01:16:34', '2021-11-30 01:16:34'),
(170, 86, 75, 'Galaxy Book Flex2 Alpha i5 8GB 256GB', '309.99', 1, '2021-11-30 01:17:02', '2021-11-30 01:17:02'),
(171, 86, 72, 'iPad Pro M1 11 inch Wifi Cellular 128GB', '299.01', 1, '2021-11-30 01:17:02', '2021-11-30 01:17:02'),
(172, 86, 85, 'LG Gram 16Z90P Laptop  Ultra-Lightweight', '599.00', 1, '2021-11-30 01:17:02', '2021-11-30 01:17:02'),
(173, 86, 84, 'ASUS ZenBook 14 Ultra-Slim Laptop', '399.00', 1, '2021-11-30 01:17:02', '2021-11-30 01:17:02'),
(174, 86, 86, 'Dell Inspiron 15.6\" FHD Touchscreen Laptop', '599.00', 1, '2021-11-30 01:17:02', '2021-11-30 01:17:02'),
(175, 86, 118, 'ASUS VivoBook 15 Core i5-1135G7', '899.00', 1, '2021-11-30 01:17:02', '2021-11-30 01:17:02'),
(176, 86, 88, 'HP 15 Laptop, AMD Ryzen 5 5500U', '455.00', 1, '2021-11-30 01:17:02', '2021-11-30 01:17:02'),
(177, 87, 83, 'Acer Aspire 5 A515-46-R14K Slim Laptop', '349.99', 1, '2021-12-02 05:53:53', '2021-12-02 05:53:53'),
(178, 87, 86, 'Dell Inspiron 15.6\" FHD Touchscreen Laptop', '599.00', 1, '2021-12-02 05:53:53', '2021-12-02 05:53:53'),
(179, 87, 75, 'Galaxy Book Flex2 Alpha i5 8GB 256GB', '309.99', 1, '2021-12-02 05:53:53', '2021-12-02 05:53:53'),
(180, 87, 110, 'SAMSUNG Galaxy Tab  Android Tablet 64GB', '559.00', 1, '2021-12-02 05:53:53', '2021-12-02 05:53:53'),
(181, 87, 82, 'Acer Nitro 5 AN515-55-53E5 Gaming Laptop', '299.99', 1, '2021-12-02 05:53:53', '2021-12-02 05:53:53'),
(182, 87, 116, 'Lenovo Chromebook Flex 5 13\" Laptop, FHD', '350.00', 3, '2021-12-02 05:53:53', '2021-12-02 05:53:53'),
(183, 87, 120, '2021 Apple 12.9-inch iPad Pro (Wi‑Fi, 256GB)', '499.00', 1, '2021-12-02 05:53:53', '2021-12-02 05:53:53'),
(184, 88, 78, 'Apple - MacBook Pro - 13\"   i5 512GB SSD', '759.99', 6, '2021-12-02 05:54:34', '2021-12-02 05:54:34'),
(185, 88, 110, 'SAMSUNG Galaxy Tab  Android Tablet 64GB', '559.00', 1, '2021-12-02 05:54:34', '2021-12-02 05:54:34'),
(186, 88, 85, 'LG Gram 16Z90P Laptop  Ultra-Lightweight', '599.00', 1, '2021-12-02 05:54:34', '2021-12-02 05:54:34'),
(187, 88, 112, 'MSI Summit E13 Flip EVO Professional Laptop', '359.00', 1, '2021-12-02 05:54:34', '2021-12-02 05:54:34'),
(188, 88, 119, 'Apple MacBook Pro Apple M1 Pro 512GB SSD', '999.00', 1, '2021-12-02 05:54:34', '2021-12-02 05:54:34'),
(189, 89, 85, 'LG Gram 16Z90P Laptop  Ultra-Lightweight', '599.00', 4, '2021-12-03 03:05:42', '2021-12-03 03:05:42'),
(190, 89, 81, 'Samsung Electronics Galaxy Chromebook', '399.00', 8, '2021-12-03 03:05:42', '2021-12-03 03:05:42'),
(191, 89, 102, 'Acer Swift 3 Thin & Light Laptop', '299.00', 1, '2021-12-03 03:05:42', '2021-12-03 03:05:42'),
(192, 90, 118, 'ASUS VivoBook 15 Core i5-1135G7', '899.00', 6, '2021-12-03 03:06:46', '2021-12-03 03:06:46'),
(193, 90, 119, 'Apple MacBook Pro Apple M1 Pro 512GB SSD', '999.00', 6, '2021-12-03 03:06:46', '2021-12-03 03:06:46'),
(194, 91, 82, 'Acer Nitro 5 AN515-55-53E5 Gaming Laptop', '299.99', 9, '2021-12-03 07:08:19', '2021-12-03 07:08:19'),
(195, 91, 85, 'LG Gram 16Z90P Laptop  Ultra-Lightweight', '599.00', 8, '2021-12-03 07:08:19', '2021-12-03 07:08:19'),
(196, 91, 117, 'Lenovo IdeaPad Gaming 3 AMD Ryzen 5', '359.00', 1, '2021-12-03 07:08:19', '2021-12-03 07:08:19'),
(197, 92, 79, 'Laptop Dell XPS 13 2-in-1 i5-1020', '599.00', 6, '2021-12-03 07:15:09', '2021-12-03 07:15:09'),
(198, 92, 96, 'MSI Modern 14 Ultra  i5-10210U', '499.00', 7, '2021-12-03 07:15:09', '2021-12-03 07:15:09'),
(199, 92, 72, 'iPad Pro M1 11 inch Wifi Cellular 128GB', '299.01', 1, '2021-12-03 07:15:09', '2021-12-03 07:15:09'),
(200, 92, 93, 'MSI GS75 Stealth Gaming Laptop i7', '599.00', 1, '2021-12-03 07:15:10', '2021-12-03 07:15:10'),
(201, 92, 115, 'LG Gram 16T90P 16\" WQXGA i5', '359.00', 1, '2021-12-03 07:15:10', '2021-12-03 07:15:10'),
(202, 92, 91, 'Acer Nitro 5 Gaming Laptop i7-11800H', '399.00', 1, '2021-12-03 07:15:10', '2021-12-03 07:15:10'),
(203, 93, 97, 'ASUS Laptop L410 Ultra  Celeron N4020', '799.00', 10, '2021-12-03 20:15:47', '2021-12-03 20:15:47'),
(204, 93, 116, 'Lenovo Chromebook Flex 5 13\" Laptop, FHD', '350.00', 5, '2021-12-03 20:15:47', '2021-12-03 20:15:47'),
(205, 94, 110, 'SAMSUNG Galaxy Tab  Android Tablet 64GB', '559.00', 10, '2021-12-05 02:05:05', '2021-12-05 02:05:05'),
(206, 94, 114, 'MSI Creator 15 Professional Laptop RTX 3060', '459.00', 6, '2021-12-05 02:05:05', '2021-12-05 02:05:05'),
(207, 94, 90, 'Lenovo IdeaPad 1 Laptop i5  1052U', '499.00', 1, '2021-12-05 02:05:05', '2021-12-05 02:05:05'),
(208, 95, 120, '2021 Apple 12.9-inch iPad Pro (Wi‑Fi, 256GB)', '499.00', 8, '2021-12-06 05:21:17', '2021-12-06 05:21:17'),
(209, 95, 78, 'Apple - MacBook Pro - 13\"   i5 512GB SSD', '759.99', 1, '2021-12-06 05:21:17', '2021-12-06 05:21:17'),
(210, 95, 119, 'Apple MacBook Pro Apple M1 Pro 512GB SSD', '999.00', 3, '2021-12-06 05:21:17', '2021-12-06 05:21:17'),
(211, 96, 119, 'Apple MacBook Pro Apple M1 Pro 512GB SSD', '999.00', 1, '2021-12-06 07:32:48', '2021-12-06 07:32:48'),
(212, 96, 103, '2020 Asus TUF Premium Gaming Laptop', '1499.00', 4, '2021-12-06 07:32:48', '2021-12-06 07:32:48'),
(213, 96, 100, 'LG Gram 17Z90P Laptop Core i7', '559.00', 8, '2021-12-06 07:32:48', '2021-12-06 07:32:48'),
(214, 97, 102, 'Acer Swift 3 Thin & Light Laptop', '299.00', 6, '2021-12-07 01:05:42', '2021-12-07 01:05:42'),
(215, 97, 78, 'Apple - MacBook Pro - 13\"   i5 512GB SSD', '759.99', 4, '2021-12-07 01:05:42', '2021-12-07 01:05:42'),
(216, 97, 99, 'ASUS ROG Strix G15 (2021) Gaming Laptop', '299.00', 1, '2021-12-07 01:05:42', '2021-12-07 01:05:42'),
(217, 98, 81, 'Samsung Electronics Galaxy Chromebook', '399.00', 1, '2021-12-07 01:06:50', '2021-12-07 01:06:50'),
(218, 99, 73, 'Laptop HP 340s G7 i5 1035G1', '299.99', 4, '2021-12-07 17:48:10', '2021-12-07 17:48:10'),
(219, 100, 118, 'ASUS VivoBook 15 Core i5-1135G7', '899.00', 1, '2021-12-07 17:48:34', '2021-12-07 17:48:34'),
(220, 100, 80, '2021 Apple MacBook Pro Apple M1 Pro chip', '599.00', 1, '2021-12-07 17:48:34', '2021-12-07 17:48:34'),
(221, 101, 100, 'LG Gram 17Z90P Laptop Core i7', '559.00', 4, '2021-12-16 20:03:45', '2021-12-16 20:03:45'),
(222, 101, 90, 'Lenovo IdeaPad 1 Laptop i5  1052U', '499.00', 1, '2021-12-16 20:03:45', '2021-12-16 20:03:45'),
(223, 102, 71, 'Samsung Galaxy Tab S7 FE 4G', '299.00', 1, '2021-12-16 20:04:04', '2021-12-16 20:04:04'),
(224, 103, 106, 'Acer - Nitro 5 15.6\" Laptop - AMD Ryzen 5', '599.00', 1, '2022-01-13 21:28:30', '2022-01-13 21:28:30'),
(225, 103, 116, 'Lenovo Chromebook Flex 5 13\" Laptop, FHD', '350.00', 1, '2022-01-13 21:28:30', '2022-01-13 21:28:30'),
(226, 103, 72, 'iPad Pro M1 11 inch Wifi Cellular 128GB', '299.01', 1, '2022-01-13 21:28:30', '2022-01-13 21:28:30'),
(227, 104, 78, 'Apple - MacBook Pro - 13\"   i5 512GB SSD', '759.99', 1, '2022-01-14 06:40:10', '2022-01-14 06:40:10'),
(228, 104, 80, '2021 Apple MacBook Pro Apple M1 Pro chip', '599.00', 1, '2022-01-14 06:40:10', '2022-01-14 06:40:10'),
(229, 104, 120, '2021 Apple 12.9-inch iPad Pro (Wi‑Fi, 256GB)', '499.00', 1, '2022-01-14 06:40:10', '2022-01-14 06:40:10'),
(230, 104, 119, 'Apple MacBook Pro Apple M1 Pro 512GB SSD', '999.00', 1, '2022-01-14 06:40:10', '2022-01-14 06:40:10'),
(231, 105, 107, 'MSI Creator Z16 Professional Laptop', '699.00', 5, '2022-01-14 06:40:45', '2022-01-14 06:40:45'),
(232, 105, 86, 'Dell Inspiron 15.6\" FHD Touchscreen Laptop', '599.00', 3, '2022-01-14 06:40:45', '2022-01-14 06:40:45'),
(234, 107, 81, 'Samsung Electronics Galaxy Chromebook', '399.00', 1, '2022-01-14 19:57:25', '2022-01-14 19:57:25'),
(235, 107, 86, 'Dell Inspiron 15.6\" FHD Touchscreen Laptop', '599.00', 1, '2022-01-14 19:57:25', '2022-01-14 19:57:25'),
(236, 107, 90, 'Lenovo IdeaPad 1 Laptop i5  1052U', '499.00', 1, '2022-01-14 19:57:25', '2022-01-14 19:57:25'),
(237, 108, 75, 'Galaxy Book Flex2 Alpha i5 8GB 256GB', '309.99', 1, '2022-01-14 20:04:40', '2022-01-14 20:04:40'),
(238, 109, 119, 'Apple MacBook Pro Apple M1 Pro 512GB SSD', '999.00', 3, '2022-01-15 04:27:35', '2022-01-15 04:27:35'),
(239, 109, 103, '2020 Asus TUF Premium Gaming Laptop', '1499.00', 3, '2022-01-15 04:27:35', '2022-01-15 04:27:35'),
(240, 110, 80, '2021 Apple MacBook Pro Apple M1 Pro chip', '599.00', 3, '2022-01-15 19:16:58', '2022-01-15 19:16:58'),
(241, 110, 85, 'LG Gram 16Z90P Laptop  Ultra-Lightweight', '599.00', 3, '2022-01-15 19:16:58', '2022-01-15 19:16:58'),
(242, 111, 75, 'Galaxy Book Flex2 Alpha i5 8GB 256GB', '309.99', 1, '2022-01-15 19:17:12', '2022-01-15 19:17:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `method`, `status`, `created_at`, `updated_at`) VALUES
(51, '1', 'Processing', '2021-11-14 01:12:24', '2021-11-14 01:12:24'),
(52, '1', 'Processing', '2021-11-14 01:13:58', '2021-11-14 01:13:58'),
(53, '1', 'Processing', '2021-11-14 01:15:00', '2021-11-14 01:15:00'),
(54, '1', 'Processing', '2021-11-14 02:26:02', '2021-11-14 02:26:02'),
(55, '1', 'Processing', '2021-11-14 03:05:07', '2021-11-14 03:05:07'),
(56, '1', 'Processing', '2021-11-14 03:17:02', '2021-11-14 03:17:02'),
(57, '1', 'Processing', '2021-11-14 03:34:15', '2021-11-14 03:34:15'),
(58, '1', 'Processing', '2021-11-14 06:24:49', '2021-11-14 06:24:49'),
(59, '1', 'Processing', '2021-11-14 06:34:21', '2021-11-14 06:34:21'),
(60, '1', 'Processing', '2021-11-14 07:25:08', '2021-11-14 07:25:08'),
(61, '1', 'Processing', '2021-11-15 05:33:59', '2021-11-15 05:33:59'),
(62, '1', 'Processing', '2021-11-15 06:13:15', '2021-11-15 06:13:15'),
(63, '1', 'Processing', '2021-11-15 06:14:21', '2021-11-15 06:14:21'),
(64, '1', 'Processing', '2021-11-15 06:14:55', '2021-11-15 06:14:55'),
(65, '1', 'Processing', '2021-11-15 06:16:17', '2021-11-15 06:16:17'),
(66, '1', 'Processing', '2021-11-15 06:21:54', '2021-11-15 06:21:54'),
(67, '1', 'Processing', '2021-11-15 06:23:33', '2021-11-15 06:23:33'),
(68, '1', 'Processing', '2021-11-15 06:24:04', '2021-11-15 06:24:04'),
(69, '1', 'Processing', '2021-11-15 06:24:19', '2021-11-15 06:24:19'),
(70, '1', 'Processing', '2021-11-15 06:24:55', '2021-11-15 06:24:55'),
(71, '1', 'Processing', '2021-11-17 07:52:36', '2021-11-17 07:52:36'),
(72, '1', 'Processing', '2021-11-17 07:52:46', '2021-11-17 07:52:46'),
(73, '1', 'Processing', '2021-11-17 07:53:52', '2021-11-17 07:53:52'),
(74, '1', 'Processing', '2021-11-17 07:54:01', '2021-11-17 07:54:01'),
(75, '1', 'Processing', '2021-11-17 07:54:40', '2021-11-17 07:54:40'),
(76, '1', 'Processing', '2021-11-17 20:03:31', '2021-11-17 20:03:31'),
(77, '1', 'Processing', '2021-11-17 20:06:08', '2021-11-17 20:06:08'),
(78, '1', 'Processing', '2021-11-17 20:07:29', '2021-11-17 20:07:29'),
(79, '1', 'Processing', '2021-11-17 20:53:14', '2021-11-17 20:53:14'),
(80, '1', 'Processing', '2021-11-17 21:49:34', '2021-11-17 21:49:34'),
(81, '1', 'Processing', '2021-11-17 22:05:41', '2021-11-17 22:05:41'),
(82, '1', 'Processing', '2021-11-20 03:48:37', '2021-11-20 03:48:37'),
(83, '1', 'Processing', '2021-11-20 20:47:46', '2021-11-20 20:47:46'),
(84, '1', 'Processing', '2021-11-20 20:47:51', '2021-11-20 20:47:51'),
(85, '1', 'Processing', '2021-11-20 20:48:50', '2021-11-20 20:48:50'),
(86, '1', 'Processing', '2021-11-22 01:27:45', '2021-11-22 01:27:45'),
(87, '1', 'Processing', '2021-11-22 01:28:30', '2021-11-22 01:28:30'),
(88, '1', 'Processing', '2021-11-22 01:47:14', '2021-11-22 01:47:14'),
(89, '1', 'Processing', '2021-11-22 01:47:36', '2021-11-22 01:47:36'),
(90, '1', 'Processing', '2021-11-23 07:39:03', '2021-11-23 07:39:03'),
(91, '1', 'Processing', '2021-11-23 19:30:00', '2021-11-23 19:30:00'),
(92, '1', 'Processing', '2021-11-24 05:38:12', '2021-11-24 05:38:12'),
(93, '1', 'Processing', '2021-11-24 05:52:47', '2021-11-24 05:52:47'),
(94, '1', 'Processing', '2021-11-24 06:00:13', '2021-11-24 06:00:13'),
(95, '1', 'Processing', '2021-11-26 21:00:30', '2021-11-26 21:00:30'),
(96, '1', 'Processing', '2021-11-26 21:00:55', '2021-11-26 21:00:55'),
(97, '1', 'Processing', '2021-11-26 21:01:35', '2021-11-26 21:01:35'),
(98, '1', 'Processing', '2021-11-26 21:02:01', '2021-11-26 21:02:01'),
(99, '1', 'Processing', '2021-11-26 21:20:30', '2021-11-26 21:20:30'),
(100, '1', 'Processing', '2021-11-26 21:20:47', '2021-11-26 21:20:47'),
(101, '1', 'Processing', '2021-11-26 21:21:13', '2021-11-26 21:21:13'),
(102, '1', 'Processing', '2021-11-28 00:01:17', '2021-11-28 00:01:17'),
(103, '1', 'Processing', '2021-11-29 01:01:06', '2021-11-29 01:01:06'),
(104, '1', 'Processing', '2021-11-30 01:15:59', '2021-11-30 01:15:59'),
(105, '1', 'Processing', '2021-11-30 01:16:20', '2021-11-30 01:16:20'),
(106, '1', 'Processing', '2021-11-30 01:16:34', '2021-11-30 01:16:34'),
(107, '1', 'Processing', '2021-11-30 01:17:02', '2021-11-30 01:17:02'),
(108, '1', 'Processing', '2021-12-02 05:53:53', '2021-12-02 05:53:53'),
(109, '1', 'Processing', '2021-12-02 05:54:34', '2021-12-02 05:54:34'),
(110, '1', 'Processing', '2021-12-03 03:05:42', '2021-12-03 03:05:42'),
(111, '1', 'Processing', '2021-12-03 03:06:46', '2021-12-03 03:06:46'),
(112, '1', 'Processing', '2021-12-03 07:08:19', '2021-12-03 07:08:19'),
(113, '1', 'Processing', '2021-12-03 07:15:09', '2021-12-03 07:15:09'),
(114, '1', 'Processing', '2021-12-03 20:15:47', '2021-12-03 20:15:47'),
(115, '1', 'Processing', '2021-12-05 02:05:05', '2021-12-05 02:05:05'),
(116, '1', 'Processing', '2021-12-06 05:21:17', '2021-12-06 05:21:17'),
(117, '1', 'Processing', '2021-12-06 07:32:48', '2021-12-06 07:32:48'),
(118, '1', 'Processing', '2021-12-07 01:05:42', '2021-12-07 01:05:42'),
(119, '1', 'Processing', '2021-12-07 01:06:50', '2021-12-07 01:06:50'),
(120, '1', 'Processing', '2021-12-07 17:48:09', '2021-12-07 17:48:09'),
(121, '1', 'Processing', '2021-12-07 17:48:34', '2021-12-07 17:48:34'),
(122, '1', 'Processing', '2021-12-16 20:03:45', '2021-12-16 20:03:45'),
(123, '1', 'Processing', '2021-12-16 20:04:04', '2021-12-16 20:04:04'),
(124, '1', 'Processing', '2022-01-13 21:28:30', '2022-01-13 21:28:30'),
(125, '1', 'Processing', '2022-01-14 06:40:10', '2022-01-14 06:40:10'),
(126, '1', 'Processing', '2022-01-14 06:40:45', '2022-01-14 06:40:45'),
(127, '1', 'Processing', '2022-01-14 19:48:25', '2022-01-14 19:48:25'),
(128, '1', 'Processing', '2022-01-14 19:57:25', '2022-01-14 19:57:25'),
(129, '1', 'Processing', '2022-01-14 20:04:40', '2022-01-14 20:04:40'),
(130, '1', 'Processing', '2022-01-15 04:27:35', '2022-01-15 04:27:35'),
(131, '1', 'Processing', '2022-01-15 19:16:58', '2022-01-15 19:16:58'),
(132, '1', 'Processing', '2022-01-15 19:17:12', '2022-01-15 19:17:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `specification` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `manufacturer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(15,2) NOT NULL,
  `price_sale` decimal(15,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `specification`, `category_id`, `manufacturer_id`, `price`, `price_sale`, `quantity`, `active`, `thumb`, `slug`, `views`, `created_at`, `updated_at`) VALUES
(71, 'Samsung Galaxy Tab S7 FE 4G', 'Samsung Galaxy Tab S7 FE 4G', '<h3>&nbsp;</h3>\r\n\r\n<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>&nbsp;</h3>', '<p>Operating system : Android 11</p>\r\n\r\n<p>Chip : Snapdragon 750G</p>\r\n\r\n<p>RAM : 4 GB</p>', 6, 6, '299.00', '399.00', 47, 1, '/storage/uploads/products/2021-11-15/samsung-galaxy-tab-s7-fe-green-600x600.jpg', 'samsung-galaxy-tab-s7-fe-4g', 53, '2021-11-14 20:22:32', '2021-12-16 20:04:04'),
(72, 'iPad Pro M1 11 inch Wifi Cellular 128GB', 'The iPad Pro is Apple\'s high-end tablet computer. The latest iPad Pro models feature a powerful M1 chip, a Thunderbolt port, an improved front-facing camera, a Liquid Retina XDR mini-LED display option on the larger model, and up to 16GB of RAM and 2TB of storage.', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\" class=\"boder:none\" style=\"width:600px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '<p>Operating system : iPadOS 14</p>\n\n<p>Chip : Apple M1 8 nh&acirc;n</p>\n\n<p>RAM : 8 GB</p>', 6, 7, '299.01', '359.99', 39, 1, '/storage/uploads/products/2021-11-15/ipad-pro-2021-11-inch-gray-600x600.jpg', 'ipad-pro-m1-11-inch-wifi-cellular-128gb', 7, '2021-11-14 20:31:09', '2022-01-15 18:52:41'),
(73, 'Laptop HP 340s G7 i5 1035G1', 'HP 340s G7 i5', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>CPU : i51035G11.00 GHz</p>\r\n\r\n<p>RAM :8 GBDDR4 2666 MHz</p>\r\n\r\n<p>Operating system : Windows 10 Home SL</p>', 1, 1, '299.99', '359.99', 31, 1, '/storage/uploads/products/2021-11-15/hp-340s-g7-i5-36a35pa-600x600.jpg', 'laptop-hp-340s-g7-i5-1035g1', 24, '2021-11-14 20:36:32', '2022-01-14 19:36:21'),
(74, 'Laptop Dell Gaming G3 15 i7 10750H', 'Laptop Dell Gaming G3 15 i7 10750H/16GB/512GB/6GB', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>CPU:i710750H2.6GHz</p>\r\n\r\n<p>RAM:16 GBDDR42933 MHz</p>\r\n\r\n<p>Operating system:Windows 10 Home SL</p>', 1, 2, '299.99', '359.99', 41, 1, '/storage/uploads/products/2021-11-15/dell-g3-15-i7-p89f002bwh-16-600x600.jpg', 'laptop-dell-gaming-g3-15-i7-10750h', 26, '2021-11-14 20:50:14', '2021-11-24 04:29:57'),
(75, 'Galaxy Book Flex2 Alpha i5 8GB 256GB', 'Tablet Galaxy Book Flex2 Alpha i5 8GB 256GB SSD', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>Intel&reg; Core&trade; i5-1135G7 Processor</p>\r\n\r\n<p>Windows 11 Home</p>\r\n\r\n<p>256 GB SDD</p>', 1, 6, '309.99', '359.99', 38, 1, '/storage/uploads/products/2021-11-20/6457785_sd.jpg', 'galaxy-book-flex2-alpha-i5-8gb-256gb', 36, '2021-11-19 22:21:42', '2022-01-15 19:17:12'),
(76, 'Laptop  HP - Stream 11.6\" Intel Celeron 64GB', 'HP - Stream 11.6\" Laptop - Intel Celeron - 4GB Memory - 64GB eMMC Flash Memory - Diamond White.Post, play, and stay productive for up to 13 hours and 15 minutes with the power of a Windows PC. HP Stream lets you do it all in a design that’s affordable, portable, and incredibly stylish.', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>Intel Celeron</p>\r\n\r\n<p>Intel UHD Graphics 600</p>\r\n\r\n<p>Windows 11 Home in S Mode</p>', 1, 1, '459.99', '499.99', 98, 1, '/storage/uploads/products/2021-11-20/6413689_sd.jpg', 'laptop-hp-stream-116-intel-celeron-64gb', 63, '2021-11-20 02:38:39', '2021-12-06 07:59:57'),
(77, 'Laptop  Lenovo  Chromebook  32GB', 'The iPad Pro is Apple\'s high-end tablet computer. The latest iPad Pro models feature a powerful M1 chip, a Thunderbolt port, an improved front-facing camera, a Liquid Retina XDR mini-LED display option on the larger model, and up to 16GB of RAM and 2TB of storage', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>&nbsp;</p>\r\n\r\n<p>MediaTek</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chrome OS</p>\r\n\r\n<p>Wireless-AC</p>', 1, 9, '459.99', '599.99', 656, 1, '/storage/uploads/products/2021-11-20/6479326_sd.jpg', 'laptop-lenovo-chromebook-32gb', 100, '2021-11-20 03:54:44', '2021-12-03 20:34:36'),
(78, 'Apple - MacBook Pro - 13\"   i5 512GB SSD', 'The iPad Pro is Apple\'s high-end tablet computer. The latest iPad Pro models feature a powerful M1 chip, a Thunderbolt port, an improved front-facing camera, a Liquid Retina XDR mini-LED display option on the larger model, and up to 16GB of RAM and 2TB of storage', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>Intel Core i5</p>\r\n\r\n<p>512GB SSD</p>\r\n\r\n<p>Intel Iris Plus Graphics</p>', 1, 7, '759.99', '799.00', 88, 1, '/storage/uploads/products/2021-11-20/6287726_sd.jpg', 'apple-macbook-pro-13-i5-512gb-ssd', 234, '2021-11-20 05:11:27', '2022-01-17 21:19:59'),
(79, 'Laptop Dell XPS 13 2-in-1 i5-1020', 'XPS 13 2-in-1', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>Intel&reg; Iris Xe Graphics</p>\r\n\r\n<p>Windows 11 Home, English</p>\r\n\r\n<p>512GB PCIe NVMe</p>', 1, 2, '599.00', '799.00', 43, 1, '/storage/uploads/products/2021-11-20/laptop-xps-13-2-in-1-centenario-tgl-9310-hi-res-imagery-notebook-xps-13-9310-lf-4000x4000-v1.webp', 'laptop-dell-xps-13-2-in-1-i5-1020', 254, '2021-11-20 05:26:34', '2022-01-15 19:21:00'),
(80, '2021 Apple MacBook Pro Apple M1 Pro chip', '2021 Apple MacBook Pro 4-inch, Apple M1 Pro chip', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>Mac OS</p>\r\n\r\n<p>Apple M1 Pro or M1 Max chip</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>14 Inches</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 1, '599.00', '799.00', 194, 1, '/storage/uploads/products/2021-11-20/61cCf94xIEL._AC_SL1500_.jpg', '2021-apple-macbook-pro-apple-m1-pro-chip', 52, '2021-11-20 05:29:46', '2022-01-15 19:16:58'),
(81, 'Samsung Electronics Galaxy Chromebook', 'Samsung Electronics Galaxy Chromebook', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>14 Inches</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Chrome OS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 6, '399.00', '499.99', -6, 1, '/storage/uploads/products/2021-11-20/81BUdYmISFS._AC_SL1500_.jpg', 'samsung-electronics-galaxy-chromebook', 70, '2021-11-20 05:32:04', '2022-01-15 05:20:19'),
(82, 'Acer Nitro 5 AN515-55-53E5 Gaming Laptop', 'Acer Nitro 5 AN515-55-53E5 Gaming Laptop', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>15.6 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Home</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Chipset Brand</td>\r\n			<td>NVIDIA</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 10, '299.99', '499.99', 120, 1, '/storage/uploads/products/2021-11-20/71m03KItMZL._AC_SL1500_.jpg', 'acer-nitro-5-an515-55-53e5-gaming-laptop', 69, '2021-11-20 05:33:52', '2021-12-03 20:32:58'),
(83, 'Acer Aspire 5 A515-46-R14K Slim Laptop', 'Acer Aspire 5 A515-46-R14K Slim Laptop', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>15.6 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 S</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 10, '349.99', '359.99', 5, 1, '/storage/uploads/products/2021-11-20/71+2H96GHZL._AC_SL1500_.jpg', 'acer-aspire-5-a515-46-r14k-slim-laptop', 70, '2021-11-20 05:35:03', '2021-12-02 05:53:53'),
(84, 'ASUS ZenBook 14 Ultra-Slim Laptop', 'ASUS ZenBook 14 Ultra-Slim Laptop', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Specific Uses For Product</td>\r\n			<td>Personal, Student, Business</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>14 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Pro</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 8, '399.00', '499.99', 5, 1, '/storage/uploads/products/2021-11-20/81DkONvgRVL._AC_SL1500_.jpg', 'asus-zenbook-14-ultra-slim-laptop', 80, '2021-11-20 05:36:26', '2022-01-15 18:43:39'),
(85, 'LG Gram 16Z90P Laptop  Ultra-Lightweight', 'LG Gram 16Z90P Laptop 16\" IPS Ultra-Lightweight', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Specific Uses For Product</td>\r\n			<td>Personal, Business</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>16 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Home</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 12, '599.00', '799.00', 23113, 1, '/storage/uploads/products/2021-11-20/81y9aJKvvlS._AC_SL1500_.jpg', 'lg-gram-16z90p-laptop-ultra-lightweight', 36, '2021-11-20 05:37:50', '2022-01-15 19:16:58'),
(86, 'Dell Inspiron 15.6\" FHD Touchscreen Laptop', 'Dell Inspiron 15.6\" FHD Touchscreen Laptop', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Dell</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>15.6 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 S</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 2, '599.00', '699.00', 115, 1, '/storage/uploads/products/2021-11-20/617KZzLzwxL._AC_SL1000_.jpg', 'dell-inspiron-156-fhd-touchscreen-laptop', 29, '2021-11-20 05:39:00', '2022-01-14 19:57:25'),
(87, 'HP 15-inch Laptop, 11th Generation Intel', 'HP 15-inch Laptop, 11th Generation Intel', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>15.6 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 11 Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 1, '499.00', '599.99', 310, 1, '/storage/uploads/products/2021-11-20/81SdJG3OUjL._AC_SL1500_.jpg', 'hp-15-inch-laptop-11th-generation-intel', 0, '2021-11-20 05:40:09', '2021-11-30 01:16:01'),
(88, 'HP 15 Laptop, AMD Ryzen 5 5500U', 'HP 15 Laptop, AMD Ryzen 5 5500U', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>15.6 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Home, Windows 10 S</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Microphone</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 1, '455.00', '599.99', 5506, 1, '/storage/uploads/products/2021-11-20/61FO+yuHkWL._AC_SL1500_.jpg', 'hp-15-laptop-amd-ryzen-5-5500u', 1, '2021-11-20 05:41:25', '2021-11-30 01:17:02'),
(89, 'Lenovo Chromebook Flex 3 11\" Laptop', 'Lenovo Chromebook Flex 3 11\" Laptop', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Lenovo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Specific Uses For Product</td>\r\n			<td>Personal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>11.6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Chrome OS</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 9, '239.00', '359.99', 1309, 1, '/storage/uploads/products/2021-11-20/611DJR7V1sL._AC_SL1500_.jpg', 'lenovo-chromebook-flex-3-11-laptop', 2, '2021-11-20 05:45:35', '2021-12-07 05:11:39'),
(90, 'Lenovo IdeaPad 1 Laptop i5  1052U', 'Lenovo IdeaPad 1 Laptop', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Specific Uses For Product</td>\r\n			<td>Personal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>14 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 11</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 9, '499.00', '599.99', 318, 1, '/storage/uploads/products/2021-11-20/71hhgeQCrOL._AC_SL1500_.jpg', 'lenovo-ideapad-1-laptop-i5-1052u', 1, '2021-11-20 05:46:50', '2022-01-14 19:57:25'),
(91, 'Acer Nitro 5 Gaming Laptop i7-11800H', 'Acer Nitro 5 Gaming Laptop i7-11800H', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>17.3 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Keyboard</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 10, '399.00', '599.00', 311, 1, '/storage/uploads/products/2021-11-20/71uj93tCTSL._AC_SL1500_.jpg', 'acer-nitro-5-gaming-laptop-i7-11800h', 1, '2021-11-20 05:48:08', '2021-12-06 06:02:45'),
(92, 'MSI GL65 Gaming Laptop i5-10300H', 'MSI GL65 Gaming Laptop i5-10300H', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>15.6 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Win 10 Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Keyboard</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 11, '545.00', '955.00', 1310, 1, '/storage/uploads/products/2021-11-20/81cAVFZEj4L._AC_SL1500_.jpg', 'msi-gl65-gaming-laptop-i5-10300h', 1, '2021-11-20 05:49:46', '2021-11-29 01:01:07');
INSERT INTO `products` (`id`, `name`, `description`, `content`, `specification`, `category_id`, `manufacturer_id`, `price`, `price_sale`, `quantity`, `active`, `thumb`, `slug`, `views`, `created_at`, `updated_at`) VALUES
(93, 'MSI GS75 Stealth Gaming Laptop i7', 'MSI GS75 Stealth Gaming Laptop i7', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>17.3 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Win 10 Pro</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Touch Pad</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 11, '599.00', '799.00', 19, 1, '/storage/uploads/products/2021-11-20/81cAVFZEj4L._AC_SL1500_.jpg', 'msi-gs75-stealth-gaming-laptop-i7', 0, '2021-11-20 05:50:30', '2021-12-03 07:15:10'),
(94, '2022 ASUS F512DA VivoBook Laptop', '2022 ASUS F512DA VivoBook Laptop', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Pro</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Microphone, Keyboard</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>A</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 8, '599.00', '799.00', 2311, 1, '/storage/uploads/products/2021-11-20/71Lpn-vGXYL._AC_SL1500_.jpg', '2022-asus-f512da-vivobook-laptop', 4, '2021-11-20 05:52:18', '2022-01-15 19:23:32'),
(96, 'MSI Modern 14 Ultra  i5-10210U', 'MSI Modern 14 Ultra  i5-10210U', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>14 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Win 10 PRO Free upgrade to Win 11</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 11, '499.00', '599.99', 31222, 1, '/storage/uploads/products/2021-11-20/71jFEA4IoEL._AC_SL1500_.jpg', 'msi-modern-14-ultra-i5-10210u', 2, '2021-11-20 05:54:54', '2021-12-03 07:15:09'),
(97, 'ASUS Laptop L410 Ultra  Celeron N4020', 'Celeron N4020 Processor', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>14 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 S</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 8, '799.00', '899.00', 109, 1, '/storage/uploads/products/2021-11-20/71s15vF4z-L._AC_SL1500_.jpg', 'asus-laptop-l410-ultra-celeron-n4020', 0, '2021-11-20 05:56:18', '2021-12-03 20:15:47'),
(98, 'Samsung Chromebook 4 + Chrome OS', 'Samsung Chromebook 4 + Chrome OS', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>15.6 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Chrome OS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Touchscreen with Stylus Support</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 6, '229.00', '399.00', 120, 1, '/storage/uploads/products/2021-11-20/51M6tMVmf4L._AC_SL1024_.jpg', 'samsung-chromebook-4-chrome-os', 3, '2021-11-20 05:57:30', '2021-12-07 05:11:46'),
(99, 'ASUS ROG Strix G15 (2021) Gaming Laptop', 'ASUS ROG Strix G15 (2021) Gaming Laptop', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>15.6 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Keyboard</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>AMD</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 8, '299.00', '359.99', 207, 1, '/storage/uploads/products/2021-11-20/71n0k0TSRwS._AC_SL1500_.jpg', 'asus-rog-strix-g15-2021-gaming-laptop', 0, '2021-11-20 06:12:47', '2021-12-07 01:05:42'),
(100, 'LG Gram 17Z90P Laptop Core i7', 'Core i7', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>17 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Keyboard</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 12, '559.00', '599.99', 3200, 1, '/storage/uploads/products/2021-11-20/81DUNuUsbaS._AC_SL1500_.jpg', 'lg-gram-17z90p-laptop-core-i7', 1, '2021-11-20 06:14:10', '2022-01-15 18:52:23'),
(101, 'Lenovo IdeaPad Flex 5i Core i5-1135G7', 'Core i5-1135G7', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>14 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Touchscreen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 9, '459.00', '599.99', 121, 1, '/storage/uploads/products/2021-11-20/71VoLjTu8OL._AC_SL1500_.jpg', 'lenovo-ideapad-flex-5i-core-i5-1135g7', 3, '2021-11-20 06:15:31', '2021-12-07 04:31:26'),
(102, 'Acer Swift 3 Thin & Light Laptop', 'Acer Swift 3 Thin & Light Laptop', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>14 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Microphone, Keyboard</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>AMD</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 10, '299.00', '359.99', 1224, 1, '/storage/uploads/products/2021-11-20/71zRcqRQGOL._AC_SL1500_.jpg', 'acer-swift-3-thin-light-laptop', 0, '2021-11-20 06:16:42', '2021-12-07 01:05:42'),
(103, '2020 Asus TUF Premium Gaming Laptop', '2020 Asus TUF 15.6\" FHD Premium Gaming Laptop', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>15.6 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Keypad</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 8, '1499.00', '1599.00', 114, 1, '/storage/uploads/products/2021-11-20/61pJEKHZT2L._AC_SL1000_.jpg', '2020-asus-tuf-premium-gaming-laptop', 2, '2021-11-20 06:17:55', '2022-01-15 19:40:36'),
(104, 'Samsung Electronics Galaxy Book Pro', 'Samsung Electronics Galaxy Book Pro', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>15.6 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Chrome OS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 6, '999.00', '1299.00', 20, 1, '/storage/uploads/products/2021-11-20/71p19u3VcXL._AC_SL1500_.jpg', 'samsung-electronics-galaxy-book-pro', 1, '2021-11-20 06:19:13', '2021-11-26 21:20:30'),
(105, '2020 Apple MacBook Air Laptop: Apple M1 Chip', '2020 Apple MacBook Air Laptop: Apple M1 Chip', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>13.3 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Mac OS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Keyboard</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Apple</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 7, '889.00', '999.00', 12120, 1, '/storage/uploads/products/2021-11-20/71vFKBpKakL._AC_SL1500_.jpg', '2020-apple-macbook-air-laptop-apple-m1-chip', 5, '2021-11-20 06:20:59', '2022-01-14 19:30:45'),
(106, 'Acer - Nitro 5 15.6\" Laptop - AMD Ryzen 5', 'Acer - Nitro 5 15.6\" Laptop - AMD Ryzen 5', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>15.6 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>AMD</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 10, '599.00', '899.00', 120, 1, '/storage/uploads/products/2021-11-20/81PUD0rM2NL._AC_SL1500_.jpg', 'acer-nitro-5-156-laptop-amd-ryzen-5', 0, '2021-11-20 06:22:07', '2022-01-13 21:28:30'),
(107, 'MSI Creator Z16 Professional Laptop', 'MSI Creator Z16 Professional Laptop', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>16 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Pro</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Touchscreen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 11, '699.00', '799.00', 1205, 1, '/storage/uploads/products/2021-11-20/51VAZP0F4RL._AC_SL1000_.jpg', 'msi-creator-z16-professional-laptop', 0, '2021-11-20 06:22:59', '2022-01-14 06:40:45'),
(108, 'SAMSUNG Galaxy Tab S7 11-inch 128GB', 'SAMSUNG Galaxy Tab S7 11-inch 128GB', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>11 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Android 10.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Storage Capacity</td>\r\n			<td>128 GB</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 6, 6, '299.00', '359.99', 109, 1, '/storage/uploads/products/2021-11-20/71-3xcwfawL._AC_SL1500_.jpg', 'samsung-galaxy-tab-s7-11-inch-128gb', 6, '2021-11-20 06:24:45', '2021-12-07 04:30:28'),
(109, '2021 Samsung Galaxy Tab A7 10.4’’', '2021 Samsung Galaxy Tab A7 10.4’’', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>10.4 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Android 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Storage Capacity</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 6, 6, '459.00', '499.99', 119, 1, '/storage/uploads/products/2021-11-20/51vsItMGe3L._AC_SL1172_.jpg', '2021-samsung-galaxy-tab-a7-104', 4, '2021-11-20 06:26:00', '2022-01-15 18:45:57'),
(110, 'SAMSUNG Galaxy Tab  Android Tablet 64GB', 'SAMSUNG Galaxy Tab  Android Tablet 64GB', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>8 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Storage Capacity</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 6, 6, '559.00', '599.00', 106, 1, '/storage/uploads/products/2021-11-20/71HX44IWA7L._AC_SL1500_.jpg', 'samsung-galaxy-tab-android-tablet-64gb', 2, '2021-11-20 06:27:06', '2021-12-05 02:05:05'),
(111, 'Lenovo Tab M10 Plus, 10.3\" FHD', 'Lenovo Tab M10 Plus, 10.3\" FHD', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Lenovo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Generation</td>\r\n			<td>2nd Generation</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>10.3 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Android 9 Pie</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 6, 10, '449.00', '599.99', 31312, 1, '/storage/uploads/products/2021-11-20/71sfODG+c+L._AC_SL1500_.jpg', 'lenovo-tab-m10-plus-103-fhd', 1, '2021-11-20 06:29:10', '2021-12-07 03:54:15'),
(112, 'MSI Summit E13 Flip EVO Professional Laptop', 'MSI Summit E13 Flip EVO Professional Laptop', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>13.4 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Touchscreen with Stylus Support</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 11, '359.00', '499.99', 118, 1, '/storage/uploads/products/2021-11-20/81t5sU-DVHS._AC_SL1500_.jpg', 'msi-summit-e13-flip-evo-professional-laptop', 0, '2021-11-20 06:31:11', '2021-12-02 05:54:34'),
(113, 'LG Gram 14T90P - 14\" WUXGA  i7 1165G7 CPU', 'LG Gram 14T90P - 14\" WUXGA  i7 1165G7 CPU', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>14 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Touchscreen, Touchscreen with Stylus Support</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 12, '599.00', '599.99', 2104, 1, '/storage/uploads/products/2021-11-20/71liApVM8lS._AC_SL1500_.jpg', 'lg-gram-14t90p-14-wuxga-i7-1165g7-cpu', 0, '2021-11-20 06:33:22', '2021-11-26 21:21:13'),
(114, 'MSI Creator 15 Professional Laptop RTX 3060', 'MSI Creator 15 Professional Laptop RTX 3060', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>15.6 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Win 10 Multi-language /Free upgrade to Win 11</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 11, '459.00', '599.00', 111, 1, '/storage/uploads/products/2021-11-20/71Gc7xGk+nL._AC_SL1500_.jpg', 'msi-creator-15-professional-laptop-rtx-3060', 5, '2021-11-20 06:34:47', '2022-01-15 18:46:02');
INSERT INTO `products` (`id`, `name`, `description`, `content`, `specification`, `category_id`, `manufacturer_id`, `price`, `price_sale`, `quantity`, `active`, `thumb`, `slug`, `views`, `created_at`, `updated_at`) VALUES
(115, 'LG Gram 16T90P 16\" WQXGA i5', 'LG Gram 16T90P 16\" WQXGA i5', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>16 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Touchscreen, Touchscreen with Stylus Support</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 12, '359.00', '499.99', 120, 1, '/storage/uploads/products/2021-11-20/71I2taLROlS._AC_SL1500_.jpg', 'lg-gram-16t90p-16-wqxga-i5', 0, '2021-11-20 06:35:58', '2021-12-03 07:15:10'),
(116, 'Lenovo Chromebook Flex 5 13\" Laptop, FHD', 'Lenovo Chromebook Flex 5 13\" Laptop, FHD', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>13.3 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Chrome OS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Touchscreen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 9, '350.00', '359.99', 106, 1, '/storage/uploads/products/2021-11-20/61qIQqN3blS._AC_SL1100_.jpg', 'lenovo-chromebook-flex-5-13-laptop-fhd', 3, '2021-11-20 06:38:03', '2022-01-13 21:28:30'),
(117, 'Lenovo IdeaPad Gaming 3 AMD Ryzen 5', 'AMD Ryzen 5', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>15.6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Windows 10 Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Microphone, Keyboard, Keypad</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>AMD</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 9, '359.00', '499.99', 308, 1, '/storage/uploads/products/2021-11-20/71lNj3046jL._AC_SL1500_.jpg', 'lenovo-ideapad-gaming-3-amd-ryzen-5', 0, '2021-11-20 06:39:43', '2021-12-03 20:32:58'),
(118, 'ASUS VivoBook 15 Core i5-1135G7', 'ASUS VivoBook 15 Core i5-1135G7', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '', 1, 8, '899.00', '999.00', 1205, 1, '/storage/uploads/products/2021-11-20/71Wfh5DcQiL._AC_SL1500_.jpg', 'asus-vivobook-15-core-i5-1135g7', 4, '2021-11-20 06:41:46', '2021-12-07 17:48:34'),
(119, 'Apple MacBook Pro Apple M1 Pro 512GB SSD', 'Apple MacBook Pro Apple M1 Pro 512GB SSD', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '', 1, 7, '999.00', '1299.00', 1194, 1, '/storage/uploads/products/2021-11-20/61Y30DpqRVL._AC_SL1500_.jpg', 'apple-macbook-pro-apple-m1-pro-512gb-ssd', 1, '2021-11-20 06:45:13', '2022-01-15 04:27:35'),
(120, '2021 Apple 12.9-inch iPad Pro (Wi‑Fi, 256GB)', '2021 Apple 12.9-inch iPad Pro (Wi‑Fi, 256GB)', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>12.9 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>IPadOS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory Storage Capacity</td>\r\n			<td>256 GB</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 6, 7, '499.00', '599.00', 108, 1, '/storage/uploads/products/2021-11-20/81+N4PFF7jS._AC_SL1500_.jpg', '2021-apple-129-inch-ipad-pro-wifi-256gb', 8, '2021-11-20 06:48:07', '2022-01-14 19:54:23'),
(121, '2019 Apple iPad (10.2-inch, Wi-Fi, 128GB)', '2019 Apple iPad (10.2-inch, Wi-Fi, 128GB)', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Generation</td>\r\n			<td>7th Generation</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>10 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>IPadOS</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 6, 7, '599.00', '799.00', 2310, 2, '/storage/uploads/products/2021-11-20/61J6uczVvJL._AC_SL1500_.jpg', '2019-apple-ipad-102-inch-wi-fi-128gb', 2, '2021-11-20 06:51:21', '2021-12-03 06:21:08'),
(124, 'ASUS Chromebook CX1 Intel Celeron N3350 Processor', 'Chi tiết', '<h2>Product specifications</h2>\r\n\r\n<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Operating system&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Chrome OS&trade;</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel&reg; Celeron&reg; N2840 with Intel&reg; HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Processor technology</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel Turbo Boost Technology</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Graphics</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>Intel HD Graphics</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Memory</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>2 GB DDR3L SDRAM</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Hard drive</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>16 GB eMMC</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Wireless</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>802.11ac (2x2) and Bluetooth&reg; 4.0 combo</h5>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<h5><strong>Battery</strong></h5>\r\n			</td>\r\n			<td>\r\n			<h5>3-cell, 36 Wh Li-ion</h5>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>14 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>Chrome OS</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Human Interface Input</td>\r\n			<td>Keyboard</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU Manufacturer</td>\r\n			<td>Intel</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, 8, '999.00', '1059.00', 123, 1, '/storage/uploads/products/2022-01-15/71oYSGF0gVS._AC_SL1500_.jpg', 'asus-chromebook-cx1-intel-celeron-n3350-processor', 1, '2022-01-14 19:54:03', '2022-01-14 19:54:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `thumb`, `product_id`, `created_at`, `updated_at`) VALUES
(43, '/storage/uploads/images/2021-11-15/samsung-galaxy-tab-s7-fan-editon-xanh-la-2.jpg', 71, '2021-11-15 01:55:42', '2021-11-15 01:55:42'),
(44, '/storage/uploads/images/2021-11-15/samsung-galaxy-tab-s7-fan-editon-xanh-la-3.jpg', 71, '2021-11-15 01:55:42', '2021-11-15 01:55:42'),
(45, '/storage/uploads/images/2021-11-15/samsung-galaxy-tab-s7-fe-green-600x600.jpg', 71, '2021-11-15 01:55:42', '2021-11-15 01:55:42'),
(46, '/storage/uploads/images/2021-11-15/ipad-pro-2021-11-inch-gray-600x600.jpg', 72, '2021-11-15 01:55:59', '2021-11-15 01:55:59'),
(47, '/storage/uploads/images/2021-11-15/ipad-pro-2021-11-inch-silver-600x600.jpg', 72, '2021-11-15 01:55:59', '2021-11-15 01:55:59'),
(48, '/storage/uploads/images/2021-11-15/hp-340s-g7-i5-36a35pa-1-org.jpg', 73, '2021-11-15 01:56:37', '2021-11-15 01:56:37'),
(49, '/storage/uploads/images/2021-11-15/hp-340s-g7-i5-36a35pa-2-org.jpg', 73, '2021-11-15 01:56:37', '2021-11-15 01:56:37'),
(50, '/storage/uploads/images/2021-11-15/hp-340s-g7-i5-36a35pa-3-org.jpg', 73, '2021-11-15 01:56:37', '2021-11-15 01:56:37'),
(51, '/storage/uploads/images/2021-11-15/hp-340s-g7-i5-36a35pa-15-org.jpg', 73, '2021-11-15 01:56:37', '2021-11-15 01:56:37'),
(52, '/storage/uploads/images/2021-11-15/dell-g3-15-i7-p89f002bwh-1-org.jpg', 74, '2021-11-15 01:57:02', '2021-11-15 01:57:02'),
(53, '/storage/uploads/images/2021-11-15/dell-g3-15-i7-p89f002bwh-2-org.jpg', 74, '2021-11-15 01:57:02', '2021-11-15 01:57:02'),
(54, '/storage/uploads/images/2021-11-15/dell-g3-15-i7-p89f002bwh-3-org.jpg', 74, '2021-11-15 01:57:02', '2021-11-15 01:57:02'),
(55, '/storage/uploads/images/2021-11-15/dell-g3-15-i7-p89f002bwh-13-org.jpg', 74, '2021-11-15 01:57:02', '2021-11-15 01:57:02'),
(56, '/storage/uploads/images/2021-11-15/dell-g3-15-i7-p89f002bwh-14-org.jpg', 74, '2021-11-15 01:57:02', '2021-11-15 01:57:02'),
(57, '/storage/uploads/images/2021-11-20/6457785_sd.jpg', 75, '2021-11-19 22:21:42', '2021-11-19 22:21:42'),
(58, '/storage/uploads/images/2021-11-20/6457785cv11d.jpg', 75, '2021-11-19 22:21:42', '2021-11-19 22:21:42'),
(59, '/storage/uploads/images/2021-11-20/6457785cv12d.jpg', 75, '2021-11-19 22:21:42', '2021-11-19 22:21:42'),
(60, '/storage/uploads/images/2021-11-20/6457785cv14d.jpg', 75, '2021-11-19 22:21:42', '2021-11-19 22:21:42'),
(61, '/storage/uploads/images/2021-11-20/6457785cv15d.jpg', 75, '2021-11-19 22:21:42', '2021-11-19 22:21:42'),
(62, '/storage/uploads/images/2021-11-20/6413689_sd.jpg', 76, '2021-11-20 02:38:39', '2021-11-20 02:38:39'),
(63, '/storage/uploads/images/2021-11-20/6413689_rd.jpg', 76, '2021-11-20 02:38:39', '2021-11-20 02:38:39'),
(64, '/storage/uploads/images/2021-11-20/6413689ld.jpg', 76, '2021-11-20 02:38:39', '2021-11-20 02:38:39'),
(65, '/storage/uploads/images/2021-11-20/6413689cv7d.jpg', 76, '2021-11-20 02:38:39', '2021-11-20 02:38:39'),
(66, '/storage/uploads/images/2021-11-20/photo-3-16218735459051861985463.jpg', 72, '2021-11-20 03:11:34', '2021-11-20 03:11:34'),
(67, '/storage/uploads/images/2021-11-20/6479326_sd.jpg', 77, '2021-11-20 03:54:44', '2021-11-20 03:54:44'),
(68, '/storage/uploads/images/2021-11-20/6479326_rd.jpg', 77, '2021-11-20 03:54:44', '2021-11-20 03:54:44'),
(69, '/storage/uploads/images/2021-11-20/6479326ld.jpg', 77, '2021-11-20 03:54:44', '2021-11-20 03:54:44'),
(70, '/storage/uploads/images/2021-11-20/6479326cv3d.jpg', 77, '2021-11-20 03:54:44', '2021-11-20 03:54:44'),
(71, '/storage/uploads/images/2021-11-20/6479326cv4d.jpg', 77, '2021-11-20 03:54:44', '2021-11-20 03:54:44'),
(72, '/storage/uploads/images/2021-11-20/6287726_sd.jpg', 78, '2021-11-20 05:11:27', '2021-11-20 05:11:27'),
(73, '/storage/uploads/images/2021-11-20/6287726cv12d.webp', 78, '2021-11-20 05:11:27', '2021-11-20 05:11:27'),
(74, '/storage/uploads/images/2021-11-20/6287726cv11d.webp', 78, '2021-11-20 05:11:27', '2021-11-20 05:11:27'),
(75, '/storage/uploads/images/2021-11-20/6287726cv13d.webp', 78, '2021-11-20 05:11:27', '2021-11-20 05:11:27'),
(76, '/storage/uploads/images/2021-11-20/llaptop-xps-13-2-in-1-centenario-tgl-9310-hi-res-imagery-notebook-xps-13-9310-4000x4000.webp', 79, '2021-11-20 05:26:34', '2021-11-20 05:26:34'),
(77, '/storage/uploads/images/2021-11-20/laptop-xps-13-2-in-1-centenario-tgl-9310-hi-res-imagery-notebook-xps-13-9310-td-4000x4000.webp', 79, '2021-11-20 05:26:34', '2021-11-20 05:26:34'),
(78, '/storage/uploads/images/2021-11-20/laptop-xps-13-2-in-1-centenario-tgl-9310-hi-res-imagery-notebook-xps-13-9310-lf-4000x4000-v1.webp', 79, '2021-11-20 05:26:34', '2021-11-20 05:26:34'),
(79, '/storage/uploads/images/2021-11-20/xs9310t_ctb_00060rb055_gy.webp', 79, '2021-11-20 05:26:34', '2021-11-20 05:26:34'),
(80, '/storage/uploads/images/2021-11-20/61cCf94xIEL._AC_SL1500_.jpg', 80, '2021-11-20 05:29:46', '2021-11-20 05:29:46'),
(81, '/storage/uploads/images/2021-11-20/71AKE565U4L._AC_SL1500_.jpg', 80, '2021-11-20 05:29:46', '2021-11-20 05:29:46'),
(82, '/storage/uploads/images/2021-11-20/81yCmJdLFRS._AC_SL1500_.jpg', 81, '2021-11-20 05:32:04', '2021-11-20 05:32:04'),
(83, '/storage/uploads/images/2021-11-20/815zitaLEvS._AC_SL1500_.jpg', 81, '2021-11-20 05:32:04', '2021-11-20 05:32:04'),
(84, '/storage/uploads/images/2021-11-20/81BUdYmISFS._AC_SL1500_.jpg', 81, '2021-11-20 05:32:04', '2021-11-20 05:32:04'),
(85, '/storage/uploads/images/2021-11-20/716Q8cFLRRS._AC_SL1500_.jpg', 81, '2021-11-20 05:32:04', '2021-11-20 05:32:04'),
(86, '/storage/uploads/images/2021-11-20/71m03KItMZL._AC_SL1500_.jpg', 82, '2021-11-20 05:33:52', '2021-11-20 05:33:52'),
(87, '/storage/uploads/images/2021-11-20/51JJbOiok6S._AC_SL1500_.jpg', 82, '2021-11-20 05:33:52', '2021-11-20 05:33:52'),
(88, '/storage/uploads/images/2021-11-20/51l6eGKyMKS._AC_SL1500_.jpg', 82, '2021-11-20 05:33:52', '2021-11-20 05:33:52'),
(89, '/storage/uploads/images/2021-11-20/811527le2uS._AC_SL1500_.jpg', 82, '2021-11-20 05:33:52', '2021-11-20 05:33:52'),
(90, '/storage/uploads/images/2021-11-20/71esri4NxrL._AC_SL1500_.jpg', 83, '2021-11-20 05:35:03', '2021-11-20 05:35:03'),
(91, '/storage/uploads/images/2021-11-20/71j9k+5Yz1L._AC_SL1500_.jpg', 83, '2021-11-20 05:35:03', '2021-11-20 05:35:03'),
(92, '/storage/uploads/images/2021-11-20/615Q24At4cL._AC_SL1500_.jpg', 83, '2021-11-20 05:35:03', '2021-11-20 05:35:03'),
(93, '/storage/uploads/images/2021-11-20/81DkONvgRVL._AC_SL1500_.jpg', 84, '2021-11-20 05:36:26', '2021-11-20 05:36:26'),
(94, '/storage/uploads/images/2021-11-20/91lJIE-2lrL._AC_SL1500_.jpg', 84, '2021-11-20 05:36:26', '2021-11-20 05:36:26'),
(95, '/storage/uploads/images/2021-11-20/81AVOtCPxTL._AC_SL1500_.jpg', 84, '2021-11-20 05:36:26', '2021-11-20 05:36:26'),
(96, '/storage/uploads/images/2021-11-20/81eTkCc9bdL._AC_SL1500_.jpg', 84, '2021-11-20 05:36:26', '2021-11-20 05:36:26'),
(97, '/storage/uploads/images/2021-11-20/81y9aJKvvlS._AC_SL1500_.jpg', 85, '2021-11-20 05:37:50', '2021-11-20 05:37:50'),
(98, '/storage/uploads/images/2021-11-20/81DmBcFtlWL._AC_SL1500_.jpg', 85, '2021-11-20 05:37:50', '2021-11-20 05:37:50'),
(99, '/storage/uploads/images/2021-11-20/81S9n+cns0L._AC_SL1500_.jpg', 85, '2021-11-20 05:37:50', '2021-11-20 05:37:50'),
(100, '/storage/uploads/images/2021-11-20/71csol0zLGL._AC_SL1500_.jpg', 85, '2021-11-20 05:37:50', '2021-11-20 05:37:50'),
(101, '/storage/uploads/images/2021-11-20/617KZzLzwxL._AC_SL1000_.jpg', 86, '2021-11-20 05:39:00', '2021-11-20 05:39:00'),
(102, '/storage/uploads/images/2021-11-20/31+qOH0cqZS._AC_.jpg', 86, '2021-11-20 05:39:00', '2021-11-20 05:39:00'),
(103, '/storage/uploads/images/2021-11-20/21GAgXta7SS._AC_.jpg', 86, '2021-11-20 05:39:00', '2021-11-20 05:39:00'),
(104, '/storage/uploads/images/2021-11-20/21A1gakmJhS._AC_.jpg', 86, '2021-11-20 05:39:00', '2021-11-20 05:39:00'),
(105, '/storage/uploads/images/2021-11-20/81A0woHFnnL._AC_SL1500_.jpg', 87, '2021-11-20 05:40:09', '2021-11-20 05:40:09'),
(106, '/storage/uploads/images/2021-11-20/81SdJG3OUjL._AC_SL1500_.jpg', 87, '2021-11-20 05:40:09', '2021-11-20 05:40:09'),
(107, '/storage/uploads/images/2021-11-20/81h8fHafcRL._AC_SL1500_.jpg', 87, '2021-11-20 05:40:09', '2021-11-20 05:40:09'),
(108, '/storage/uploads/images/2021-11-20/81rWj4PgiWL._AC_SL1500_.jpg', 87, '2021-11-20 05:40:09', '2021-11-20 05:40:09'),
(109, '/storage/uploads/images/2021-11-20/61FO+yuHkWL._AC_SL1500_.jpg', 88, '2021-11-20 05:41:25', '2021-11-20 05:41:25'),
(110, '/storage/uploads/images/2021-11-20/71hPhLDcd8L._AC_SL1500_.jpg', 88, '2021-11-20 05:41:25', '2021-11-20 05:41:25'),
(111, '/storage/uploads/images/2021-11-20/81AbWBSfZfL._AC_SL1500_.jpg', 88, '2021-11-20 05:41:25', '2021-11-20 05:41:25'),
(112, '/storage/uploads/images/2021-11-20/61UMfDhuxSL._AC_SL1500_.jpg', 88, '2021-11-20 05:41:25', '2021-11-20 05:41:25'),
(113, '/storage/uploads/images/2021-11-20/611DJR7V1sL._AC_SL1500_.jpg', 89, '2021-11-20 05:45:35', '2021-11-20 05:45:35'),
(114, '/storage/uploads/images/2021-11-20/71dj3uQrqGL._AC_SL1500_.jpg', 89, '2021-11-20 05:45:35', '2021-11-20 05:45:35'),
(115, '/storage/uploads/images/2021-11-20/81AeN3E6R5L._AC_SL1500_.jpg', 89, '2021-11-20 05:45:35', '2021-11-20 05:45:35'),
(116, '/storage/uploads/images/2021-11-20/71hhgeQCrOL._AC_SL1500_.jpg', 90, '2021-11-20 05:46:50', '2021-11-20 05:46:50'),
(117, '/storage/uploads/images/2021-11-20/81PCoI1T5LL._AC_SL1500_.jpg', 90, '2021-11-20 05:46:50', '2021-11-20 05:46:50'),
(118, '/storage/uploads/images/2021-11-20/71o8EemKI+L._AC_SL1500_.jpg', 90, '2021-11-20 05:46:50', '2021-11-20 05:46:50'),
(119, '/storage/uploads/images/2021-11-20/81K69N9EwRL._AC_SL1500_.jpg', 90, '2021-11-20 05:46:50', '2021-11-20 05:46:50'),
(120, '/storage/uploads/images/2021-11-20/71uj93tCTSL._AC_SL1500_.jpg', 91, '2021-11-20 05:48:08', '2021-11-20 05:48:08'),
(121, '/storage/uploads/images/2021-11-20/71YFOzEkMTL._AC_SL1500_.jpg', 91, '2021-11-20 05:48:08', '2021-11-20 05:48:08'),
(122, '/storage/uploads/images/2021-11-20/71maSUFnT7L._AC_SL1500_.jpg', 91, '2021-11-20 05:48:08', '2021-11-20 05:48:08'),
(123, '/storage/uploads/images/2021-11-20/81cAVFZEj4L._AC_SL1500_.jpg', 92, '2021-11-20 05:49:46', '2021-11-20 05:49:46'),
(124, '/storage/uploads/images/2021-11-20/81Mbw6RBtPL._AC_SL1500_.jpg', 92, '2021-11-20 05:49:46', '2021-11-20 05:49:46'),
(125, '/storage/uploads/images/2021-11-20/81b-D92SMtL._AC_SL1500_.jpg', 92, '2021-11-20 05:49:46', '2021-11-20 05:49:46'),
(126, '/storage/uploads/images/2021-11-20/81cAVFZEj4L._AC_SL1500_.jpg', 93, '2021-11-20 05:50:30', '2021-11-20 05:50:30'),
(127, '/storage/uploads/images/2021-11-20/81Mbw6RBtPL._AC_SL1500_.jpg', 93, '2021-11-20 05:50:30', '2021-11-20 05:50:30'),
(128, '/storage/uploads/images/2021-11-20/81b-D92SMtL._AC_SL1500_.jpg', 93, '2021-11-20 05:50:30', '2021-11-20 05:50:30'),
(129, '/storage/uploads/images/2021-11-20/71Lpn-vGXYL._AC_SL1500_.jpg', 94, '2021-11-20 05:52:18', '2021-11-20 05:52:18'),
(130, '/storage/uploads/images/2021-11-20/71pHN5h2JBL._AC_SL1500_.jpg', 94, '2021-11-20 05:52:18', '2021-11-20 05:52:18'),
(131, '/storage/uploads/images/2021-11-20/71G6EMV4CzL._AC_SL1500_.jpg', 94, '2021-11-20 05:52:18', '2021-11-20 05:52:18'),
(132, '/storage/uploads/images/2021-11-20/61mlldRHpbL._AC_SL1500_.jpg', 94, '2021-11-20 05:52:18', '2021-11-20 05:52:18'),
(133, '/storage/uploads/images/2021-11-20/71jFEA4IoEL._AC_SL1500_.jpg', 96, '2021-11-20 05:54:54', '2021-11-20 05:54:54'),
(134, '/storage/uploads/images/2021-11-20/715E7PBJqyL._AC_SL1500_.jpg', 96, '2021-11-20 05:54:54', '2021-11-20 05:54:54'),
(135, '/storage/uploads/images/2021-11-20/71N+yJTPTpL._AC_SL1500_.jpg', 96, '2021-11-20 05:54:54', '2021-11-20 05:54:54'),
(136, '/storage/uploads/images/2021-11-20/71s15vF4z-L._AC_SL1500_.jpg', 97, '2021-11-20 05:56:18', '2021-11-20 05:56:18'),
(137, '/storage/uploads/images/2021-11-20/71Hl4u8NGZL._AC_SL1500_.jpg', 97, '2021-11-20 05:56:18', '2021-11-20 05:56:18'),
(138, '/storage/uploads/images/2021-11-20/81Cr6MwFIaL._AC_SL1500_.jpg', 97, '2021-11-20 05:56:18', '2021-11-20 05:56:18'),
(139, '/storage/uploads/images/2021-11-20/61haL7447DL._AC_SL1024_.jpg', 98, '2021-11-20 05:57:30', '2021-11-20 05:57:30'),
(140, '/storage/uploads/images/2021-11-20/51ex4fE6WdL._AC_SL1024_.jpg', 98, '2021-11-20 05:57:30', '2021-11-20 05:57:30'),
(141, '/storage/uploads/images/2021-11-20/51M6tMVmf4L._AC_SL1024_.jpg', 98, '2021-11-20 05:57:30', '2021-11-20 05:57:30'),
(142, '/storage/uploads/images/2021-11-20/51bOWCHEF+L._AC_SL1024_.jpg', 98, '2021-11-20 05:57:30', '2021-11-20 05:57:30'),
(143, '/storage/uploads/images/2021-11-20/71n0k0TSRwS._AC_SL1500_.jpg', 99, '2021-11-20 06:12:48', '2021-11-20 06:12:48'),
(144, '/storage/uploads/images/2021-11-20/81OdqZ87UpL._AC_SL1500_.jpg', 99, '2021-11-20 06:12:48', '2021-11-20 06:12:48'),
(145, '/storage/uploads/images/2021-11-20/81RPKtcO5vL._AC_SL1500_.jpg', 99, '2021-11-20 06:12:48', '2021-11-20 06:12:48'),
(146, '/storage/uploads/images/2021-11-20/71eawOfEo-L._AC_SL1500_.jpg', 100, '2021-11-20 06:14:10', '2021-11-20 06:14:10'),
(147, '/storage/uploads/images/2021-11-20/81DUNuUsbaS._AC_SL1500_.jpg', 100, '2021-11-20 06:14:10', '2021-11-20 06:14:10'),
(148, '/storage/uploads/images/2021-11-20/716aVWwgdYL._AC_SL1500_.jpg', 100, '2021-11-20 06:14:10', '2021-11-20 06:14:10'),
(149, '/storage/uploads/images/2021-11-20/718dqjZ7+tL._AC_SL1500_.jpg', 100, '2021-11-20 06:14:10', '2021-11-20 06:14:10'),
(150, '/storage/uploads/images/2021-11-20/71VoLjTu8OL._AC_SL1500_.jpg', 101, '2021-11-20 06:15:31', '2021-11-20 06:15:31'),
(151, '/storage/uploads/images/2021-11-20/71zIgioO4aL._AC_SL1500_.jpg', 101, '2021-11-20 06:15:31', '2021-11-20 06:15:31'),
(152, '/storage/uploads/images/2021-11-20/71AUQj5wwtL._AC_SL1500_.jpg', 101, '2021-11-20 06:15:31', '2021-11-20 06:15:31'),
(153, '/storage/uploads/images/2021-11-20/71zRcqRQGOL._AC_SL1500_.jpg', 102, '2021-11-20 06:16:42', '2021-11-20 06:16:42'),
(154, '/storage/uploads/images/2021-11-20/71COPuY4wNL._AC_SL1500_.jpg', 102, '2021-11-20 06:16:42', '2021-11-20 06:16:42'),
(155, '/storage/uploads/images/2021-11-20/71fmQw1exvL._AC_SL1500_.jpg', 102, '2021-11-20 06:16:42', '2021-11-20 06:16:42'),
(156, '/storage/uploads/images/2021-11-20/714U9oCvrML._AC_SL1000_.jpg', 103, '2021-11-20 06:17:55', '2021-11-20 06:17:55'),
(157, '/storage/uploads/images/2021-11-20/615nce4KgUL._AC_SL1000_.jpg', 103, '2021-11-20 06:17:55', '2021-11-20 06:17:55'),
(158, '/storage/uploads/images/2021-11-20/51EcmlOjcaL._AC_SL1000_.jpg', 103, '2021-11-20 06:17:55', '2021-11-20 06:17:55'),
(159, '/storage/uploads/images/2021-11-20/71p19u3VcXL._AC_SL1500_.jpg', 104, '2021-11-20 06:19:13', '2021-11-20 06:19:13'),
(160, '/storage/uploads/images/2021-11-20/71B9yDG3rAL._AC_SL1500_.jpg', 104, '2021-11-20 06:19:13', '2021-11-20 06:19:13'),
(161, '/storage/uploads/images/2021-11-20/81AOc10gxaL._AC_SL1500_.jpg', 104, '2021-11-20 06:19:13', '2021-11-20 06:19:13'),
(162, '/storage/uploads/images/2021-11-20/81HZAfCGZ5L._AC_SL1500_.jpg', 105, '2021-11-20 06:20:59', '2021-11-20 06:20:59'),
(163, '/storage/uploads/images/2021-11-20/71vFKBpKakL._AC_SL1500_.jpg', 105, '2021-11-20 06:20:59', '2021-11-20 06:20:59'),
(164, '/storage/uploads/images/2021-11-20/81PeNcC5W4L._AC_SL1500_.jpg', 105, '2021-11-20 06:20:59', '2021-11-20 06:20:59'),
(165, '/storage/uploads/images/2021-11-20/51EcmlOjcaL._AC_SL1000_.jpg', 106, '2021-11-20 06:22:07', '2021-11-20 06:22:07'),
(166, '/storage/uploads/images/2021-11-20/71YFOzEkMTL._AC_SL1500_.jpg', 106, '2021-11-20 06:22:07', '2021-11-20 06:22:07'),
(167, '/storage/uploads/images/2021-11-20/51VAZP0F4RL._AC_SL1000_.jpg', 107, '2021-11-20 06:22:59', '2021-11-20 06:22:59'),
(168, '/storage/uploads/images/2021-11-20/51DmXo5FyRS._AC_SL1000_.jpg', 107, '2021-11-20 06:22:59', '2021-11-20 06:22:59'),
(169, '/storage/uploads/images/2021-11-20/61--o7sa+YS._AC_SL1000_.jpg', 107, '2021-11-20 06:22:59', '2021-11-20 06:22:59'),
(170, '/storage/uploads/images/2021-11-20/81yyW8lEPKL._AC_SL1500_.jpg', 108, '2021-11-20 06:24:46', '2021-11-20 06:24:46'),
(171, '/storage/uploads/images/2021-11-20/71-3xcwfawL._AC_SL1500_.jpg', 108, '2021-11-20 06:24:46', '2021-11-20 06:24:46'),
(172, '/storage/uploads/images/2021-11-20/81zhbazIRhL._AC_SL1500_.jpg', 108, '2021-11-20 06:24:46', '2021-11-20 06:24:46'),
(173, '/storage/uploads/images/2021-11-20/61rSIdUsWmL._AC_SL1140_.jpg', 109, '2021-11-20 06:26:00', '2021-11-20 06:26:00'),
(174, '/storage/uploads/images/2021-11-20/51vsItMGe3L._AC_SL1172_.jpg', 109, '2021-11-20 06:26:00', '2021-11-20 06:26:00'),
(175, '/storage/uploads/images/2021-11-20/61rSIdUsWmL._AC_SL1140_.jpg', 109, '2021-11-20 06:26:00', '2021-11-20 06:26:00'),
(176, '/storage/uploads/images/2021-11-20/51SkKOMauiL._AC_SL1156_.jpg', 109, '2021-11-20 06:26:00', '2021-11-20 06:26:00'),
(177, '/storage/uploads/images/2021-11-20/71HX44IWA7L._AC_SL1500_.jpg', 110, '2021-11-20 06:27:06', '2021-11-20 06:27:06'),
(178, '/storage/uploads/images/2021-11-20/7199+IsEw3L._AC_SL1500_.jpg', 110, '2021-11-20 06:27:06', '2021-11-20 06:27:06'),
(179, '/storage/uploads/images/2021-11-20/71TSS1twidL._AC_SL1500_.jpg', 110, '2021-11-20 06:27:06', '2021-11-20 06:27:06'),
(180, '/storage/uploads/images/2021-11-20/71sfODG+c+L._AC_SL1500_.jpg', 111, '2021-11-20 06:29:10', '2021-11-20 06:29:10'),
(181, '/storage/uploads/images/2021-11-20/81JR-A35D0L._AC_SL1500_.jpg', 111, '2021-11-20 06:29:10', '2021-11-20 06:29:10'),
(182, '/storage/uploads/images/2021-11-20/71qJ3-RsAtL._AC_SL1500_.jpg', 111, '2021-11-20 06:29:10', '2021-11-20 06:29:10'),
(183, '/storage/uploads/images/2021-11-20/81t5sU-DVHS._AC_SL1500_.jpg', 112, '2021-11-20 06:31:11', '2021-11-20 06:31:11'),
(184, '/storage/uploads/images/2021-11-20/71OjKqhU0bS._AC_SL1500_.jpg', 112, '2021-11-20 06:31:11', '2021-11-20 06:31:11'),
(185, '/storage/uploads/images/2021-11-20/71QNXv1T2TS._AC_SL1500_.jpg', 112, '2021-11-20 06:31:11', '2021-11-20 06:31:11'),
(186, '/storage/uploads/images/2021-11-20/71liApVM8lS._AC_SL1500_.jpg', 113, '2021-11-20 06:33:22', '2021-11-20 06:33:22'),
(187, '/storage/uploads/images/2021-11-20/81G0Q8MRXLL._AC_SL1500_.jpg', 113, '2021-11-20 06:33:22', '2021-11-20 06:33:22'),
(188, '/storage/uploads/images/2021-11-20/81ZQJCJto4L._AC_SL1500_.jpg', 113, '2021-11-20 06:33:22', '2021-11-20 06:33:22'),
(189, '/storage/uploads/images/2021-11-20/71Gc7xGk+nL._AC_SL1500_.jpg', 114, '2021-11-20 06:34:47', '2021-11-20 06:34:47'),
(190, '/storage/uploads/images/2021-11-20/71eVnidyOLL._AC_SL1500_.jpg', 114, '2021-11-20 06:34:47', '2021-11-20 06:34:47'),
(191, '/storage/uploads/images/2021-11-20/51-OtoGuTSL._AC_SL1500_.jpg', 114, '2021-11-20 06:34:47', '2021-11-20 06:34:47'),
(192, '/storage/uploads/images/2021-11-20/71I2taLROlS._AC_SL1500_.jpg', 115, '2021-11-20 06:35:58', '2021-11-20 06:35:58'),
(193, '/storage/uploads/images/2021-11-20/81G0Q8MRXLL._AC_SL1500_.jpg', 115, '2021-11-20 06:35:58', '2021-11-20 06:35:58'),
(195, '/storage/uploads/images/2021-11-20/61qIQqN3blS._AC_SL1100_.jpg', 116, '2021-11-20 06:38:03', '2021-11-20 06:38:03'),
(196, '/storage/uploads/images/2021-11-20/61SQ9-JCAgS._AC_SL1100_.jpg', 116, '2021-11-20 06:38:03', '2021-11-20 06:38:03'),
(197, '/storage/uploads/images/2021-11-20/31-74K-Q-cS._AC_SL1100_.jpg', 116, '2021-11-20 06:38:03', '2021-11-20 06:38:03'),
(198, '/storage/uploads/images/2021-11-20/71lNj3046jL._AC_SL1500_.jpg', 117, '2021-11-20 06:39:43', '2021-11-20 06:39:43'),
(199, '/storage/uploads/images/2021-11-20/711QS5nRNDL._AC_SL1500_.jpg', 117, '2021-11-20 06:39:43', '2021-11-20 06:39:43'),
(200, '/storage/uploads/images/2021-11-20/71XXvCBlg7L._AC_SL1500_.jpg', 117, '2021-11-20 06:39:43', '2021-11-20 06:39:43'),
(201, '/storage/uploads/images/2021-11-20/71Wfh5DcQiL._AC_SL1500_.jpg', 118, '2021-11-20 06:41:46', '2021-11-20 06:41:46'),
(202, '/storage/uploads/images/2021-11-20/816qatJHhcL._AC_SL1500_.jpg', 118, '2021-11-20 06:41:46', '2021-11-20 06:41:46'),
(203, '/storage/uploads/images/2021-11-20/81NqR8hyPvL._AC_SL1500_.jpg', 118, '2021-11-20 06:41:46', '2021-11-20 06:41:46'),
(204, '/storage/uploads/images/2021-11-20/61Y30DpqRVL._AC_SL1500_.jpg', 119, '2021-11-20 06:45:13', '2021-11-20 06:45:13'),
(205, '/storage/uploads/images/2021-11-20/716QjdQOR+L._AC_SL1500_.jpg', 119, '2021-11-20 06:45:13', '2021-11-20 06:45:13'),
(206, '/storage/uploads/images/2021-11-20/81b4e7f9SnL._AC_SL1500_.jpg', 119, '2021-11-20 06:45:13', '2021-11-20 06:45:13'),
(207, '/storage/uploads/images/2021-11-20/81+N4PFF7jS._AC_SL1500_.jpg', 120, '2021-11-20 06:48:07', '2021-11-20 06:48:07'),
(208, '/storage/uploads/images/2021-11-20/71Qltdecc4S._AC_SL1500_.jpg', 120, '2021-11-20 06:48:07', '2021-11-20 06:48:07'),
(209, '/storage/uploads/images/2021-11-20/816WH7-GCTS._AC_SL1500_.jpg', 120, '2021-11-20 06:48:07', '2021-11-20 06:48:07'),
(210, '/storage/uploads/images/2021-11-20/61J6uczVvJL._AC_SL1500_.jpg', 121, '2021-11-20 06:51:21', '2021-11-20 06:51:21'),
(211, '/storage/uploads/images/2021-11-20/51f5FKjLvzL._AC_SL1500_.jpg', 121, '2021-11-20 06:51:21', '2021-11-20 06:51:21'),
(212, '/storage/uploads/images/2021-11-20/51vbHEljOeL._AC_SL1500_.jpg', 121, '2021-11-20 06:51:21', '2021-11-20 06:51:21'),
(213, '/storage/uploads/images/2021-12-07/51vE2dVSTdL._AC_SL1500_.jpg', 122, '2021-12-07 01:01:10', '2021-12-07 01:01:10'),
(214, '/storage/uploads/images/2021-12-07/51VleGR6AEL._AC_SL1500_.jpg', 122, '2021-12-07 01:01:10', '2021-12-07 01:01:10'),
(215, '/storage/uploads/images/2021-12-07/51umDwf8OQL._AC_SL1500_.jpg', 122, '2021-12-07 01:01:10', '2021-12-07 01:01:10'),
(216, '/storage/uploads/images/2021-12-07/51CHzZJ0xaL._AC_SL1500_.jpg', 122, '2021-12-07 01:01:10', '2021-12-07 01:01:10'),
(217, '/storage/uploads/images/2021-12-08/51umDwf8OQL._AC_SL1500_.jpg', 122, '2021-12-07 17:18:53', '2021-12-07 17:18:53'),
(218, '/storage/uploads/images/2021-12-08/51CHzZJ0xaL._AC_SL1500_.jpg', 122, '2021-12-07 17:18:53', '2021-12-07 17:18:53'),
(219, '/storage/uploads/images/2021-12-08/51vE2dVSTdL._AC_SL1500_.jpg', 122, '2021-12-07 17:18:53', '2021-12-07 17:18:53'),
(220, '/storage/uploads/images/2021-12-08/51VleGR6AEL._AC_SL1500_.jpg', 122, '2021-12-07 17:18:53', '2021-12-07 17:18:53'),
(221, '/storage/uploads/images/2022-01-15/mua sản phẩm (1).png', 122, '2022-01-14 19:25:39', '2022-01-14 19:25:39'),
(222, '/storage/uploads/images/2022-01-15/Nen hoc Online.png', 123, '2022-01-14 19:26:41', '2022-01-14 19:26:41'),
(223, '/storage/uploads/images/2022-01-15/71oYSGF0gVS._AC_SL1500_.jpg', 124, '2022-01-14 19:54:03', '2022-01-14 19:54:03'),
(224, '/storage/uploads/images/2022-01-15/71PN-nqPF0S._AC_SL1500_.jpg', 124, '2022-01-14 19:54:03', '2022-01-14 19:54:03'),
(226, '/storage/uploads/images/2022-01-15/71pJ+qT2xzL._AC_SL1500_.jpg', 126, '2022-01-15 07:35:08', '2022-01-15 07:35:08'),
(227, '/storage/uploads/images/2022-01-15/71GdPVFyfBL._AC_SL1500_.jpg', 126, '2022-01-15 07:35:08', '2022-01-15 07:35:08'),
(228, '/storage/uploads/images/2022-01-15/619yIykyJXL._AC_SL1500_.jpg', 126, '2022-01-15 07:35:08', '2022-01-15 07:35:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0s3aHz8iFQnYi4acuDeMCU7VjauIeCMW28mfppsE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDgzNGQyQTF3YTFLRXNQdDF5cW5ENmxvSmZ3QnVyRUtadmZWd0QwbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vbGFyYXZlbC50ZXN0L2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1657596663),
('AaR3lJldQDi2o0V9d5CACf8yRBV0uXqFuToPC7NT', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT3BLOTdHeUhhSzVpeXFpbW90Zm1nUHl4U2pOenZFUzlGUGoyUDhnRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8vbGFyYXZlbC50ZXN0L2FkbWluL2FydGljbGVzL2xpc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1642479753),
('flLzvq3N9CwQJ9NEVF1CVZUtIm2mZyBKHttTrSbL', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'YTo0OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9sYXJhdmVsLnRlc3QvaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiIxNEJCQWREdW5sRU9hTnRSQUxJMk5SeU1zMHhscUpqemxXdDdMT2dKIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1642308195),
('g4LeINp2trir30JCzfg4QIyiqb9ia6jYrOtt0oui', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibE1BYWloNGlFZ1BZM0tHNkhINDJYbzBua0JQUFQ5Mm40Q1dXWXY5MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9sYXJhdmVsL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1657595880),
('o10HSfM9QT8iYk4C6dk40fGowR4b7yRcnROidVUg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36 Edg/101.0.1210.39', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMmFvcVRCMll4SmZnNDJVNTFuRnhtMjh0ampGbzNwdEw2Rmhhc3lEeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vbGFyYXZlbC50ZXN0L2FkbWluL29yZGVycy9lZGl0LzEwMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1652287886),
('zBHyhVdO3qRFJg4z5d2pcugU91kDGt0Me5qYdbFY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEljTTRlMFF3eERvSGcxVHFrbHVHaldWSkNWNzdLMGNBY0R3R3M2ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vbGFyYXZlbC50ZXN0L2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1657595894);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `description`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(4, '8 Windows Hybrid Laptops', '', 'The laptop comes with an Intel i5 chip and 8GB of RAM.', '/storage/uploads/products/2021-11-05/surfaces.jpg', 2, 1, '2021-11-05 07:54:03', '2021-11-05 07:54:03'),
(5, 'New amazing laptops', '', 'Provide lightweight and powerull', '/storage/uploads/products/2021-11-06/newlaptops.jpg', 1, 1, '2021-11-05 21:12:05', '2021-11-06 06:00:09'),
(6, 'Luxury devices', '', 'Luxury watches, business tablets and 3D touch: How Apple plans to stay ahead in mobile.', '/storage/uploads/products/2021-11-07/ipadair2m.jpg', 3, 1, '2021-11-05 21:13:12', '2021-11-06 21:51:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statisticals`
--

CREATE TABLE `statisticals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `sales` decimal(10,0) NOT NULL,
  `profit` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statisticals`
--

INSERT INTO `statisticals` (`id`, `date`, `sales`, `profit`, `quantity`, `order_total`, `created_at`, `updated_at`) VALUES
(1, '2021-11-22', '11327', '1132.67', 20, 13, NULL, '2021-11-22 06:58:45'),
(2, '2021-11-21', '15000', '600.00', 90, 50, NULL, NULL),
(3, '2021-11-19', '9000', '3400.00', 452, 41, NULL, NULL),
(4, '2021-11-18', '12000', '5600.00', 90, 20, NULL, NULL),
(5, '2021-11-23', '17570', '1756.93', 31, 6, '2021-11-23 02:44:28', '2021-11-23 05:03:59'),
(6, '2021-11-14', '25000', '2500.00', 50, 25, NULL, NULL),
(7, '2021-11-24', '9229', '923.07', 19, 7, '2021-11-23 19:30:29', '2021-11-24 06:00:53'),
(8, '2021-11-20', '15242', '1524.00', 14, 5, NULL, NULL),
(9, '2021-10-12', '43251', '4325.00', 50, 10, NULL, NULL),
(10, '2021-10-31', '50600', '5060.00', 43, 15, NULL, NULL),
(11, '2021-11-27', '9220', '921.97', 17, 4, '2021-11-26 21:02:27', '2021-11-26 21:21:36'),
(12, '2021-11-28', '10049', '1004.97', 23, 6, '2021-11-28 00:01:32', '2021-11-28 00:02:28'),
(13, '2021-11-29', '3802', '380.21', 8, 2, '2021-11-29 01:01:56', '2021-11-29 01:02:24'),
(14, '2021-11-30', '6234', '623.39', 12, 3, '2021-11-30 01:17:23', '2021-11-30 01:17:31'),
(15, '2021-12-02', '7588', '758.83', 16, 2, '2021-12-02 02:44:12', '2021-12-02 07:52:44'),
(16, '2021-12-03', '13611', '1361.11', 23, 2, '2021-12-03 03:07:13', '2021-12-03 03:07:24'),
(17, '2021-12-04', '31989', '3198.97', 55, 5, '2021-12-03 20:16:43', '2021-12-03 20:34:46'),
(18, '2021-12-05', '8821', '882.09', 17, 1, '2021-12-05 02:06:21', '2021-12-05 02:06:21'),
(19, '2021-12-06', '17446', '1744.53', 27, 2, '2021-12-06 05:21:41', '2021-12-06 05:21:50'),
(20, '2021-12-07', '17160', '1716.04', 24, 2, '2021-12-07 01:07:45', '2021-12-07 01:07:53'),
(21, '2021-12-08', '1616', '161.60', 5, 2, '2021-12-07 17:52:42', '2021-12-07 17:52:57'),
(22, '2021-12-17', '1573', '157.29', 2, 1, '2021-12-16 20:09:30', '2021-12-16 20:09:30'),
(23, '2022-01-14', '9867', '986.68', 15, 3, '2022-01-14 06:37:31', '2022-01-14 06:41:49'),
(24, '2022-01-15', '11933', '1193.27', 14, 3, '2022-01-14 19:28:38', '2022-01-15 04:28:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `password`, `remember_token`, `is_admin`, `avatar`, `created_at`, `updated_at`, `facebook_id`) VALUES
(1, 'Admin', 'admin@localhost.com', NULL, '0913312906', '$2y$10$qtrr8/IAHDfeV.KZshSeBORWQccYRvRO7Yu2DGVlKNRjsowfchAxe', NULL, 1, NULL, NULL, '2021-11-23 04:22:27', NULL),
(2, 'User', 'user@localhost.com', NULL, '0169581358', '$2y$10$qsxkMcTsxAW914iCBiSxQuM/Oowl/GbEi2olYY7q1MMM683meyEQi', NULL, 0, NULL, '2021-11-09 10:56:29', '2021-11-09 10:56:29', NULL),
(3, 'Van Chuong', 'vanchuong@localhost.com', NULL, '0169581358', '$2y$10$S4BRf5EDrcphME/nuokszuML5osB.ln0dAQo.DGASufJ4FHijBR4C', NULL, 0, NULL, '2021-11-09 08:01:49', '2021-11-09 08:01:49', NULL),
(5, 'Van Chuong 1121312', 'vanchuong112@gmail.com', NULL, '01265555', '$2y$10$lPecTOFzGGmk3EbM18QVm.OfT3oM6FvsaQjJ0jJewuEZK0H8wsx/K', NULL, 0, NULL, '2021-11-12 02:24:29', '2021-11-18 21:27:57', NULL),
(6, 'Văn Chương', 'toilaai19082002@gmail.com', NULL, '0126555555', '$2y$10$cYTuZpicHEmYPcdYXJRAw.jl77N7T6Wg0HqE2UpxD49XFtYUpP0ie', 'TyJNGmFjbxgtyWGPk8WGZdISHLBcONpzhnEfUn5gb6D7abWRXeMnyYZf9FpP', 0, 'https://graph.facebook.com/v3.3/1764312013764669/picture?type=normal', '2021-11-14 05:53:44', '2022-01-15 19:14:19', '1764312013764669'),
(7, 'Chu Hàn', NULL, NULL, '0169581358', '$2y$10$Y6Azi6ZP65mzcZHeyWiiBOCRZjl6oYaLAZrHFRPA6x.qzwrK1Qjl.', NULL, 0, 'https://graph.facebook.com/v3.3/3011893465735177/picture?type=normal', '2021-11-15 06:41:43', '2021-12-07 17:50:09', '3011893465735177'),
(8, 'Hùng Lê', '', NULL, '0169581358', '$2y$10$fS/UqNoAfL8gUL00johDLuqqUKovu97/T6IeI1Yu.rQ5vj6.dwR6a', NULL, 0, 'https://graph.facebook.com/v3.3/647361756265320/picture?type=normal', '2021-11-15 06:45:44', '2021-11-15 06:45:44', '647361756265320'),
(9, 'Anh Thư', 'anhthu@gmail.com', NULL, '0169581358', '$2y$10$dXJF/5089MDjLWOa7LKnmOhB.QMbpRkSi9SzkMF8sRhIY/3PQnXaW', 'B6Hi9zmixW3plAMH', 0, NULL, '2021-11-15 06:57:07', '2021-12-07 03:44:00', NULL),
(10, 'Thùy Trang', 'thuytrang@gmail.com', NULL, '0169581358', '$2y$10$ZuPDADZcdApCtJOW7eTZ1.d0SDCD1NI9eqPu/kezPAZPyHHUVwncO', NULL, 0, NULL, '2021-11-15 06:57:48', '2021-11-15 06:57:48', NULL),
(11, 'Nguyễn Quang', 'nguyenquang@gmail.com', NULL, '0169581358', '$2y$10$TL19OpS9IORhxYbqwvyTfOzWQlG0zN1JPGIl5hQMaO1fHi2elHAu.', NULL, 0, NULL, '2021-11-15 06:59:27', '2021-11-15 06:59:27', NULL),
(12, 'Van Chuong', 'lvchuong.20it12@vku.udn.vn', NULL, '0169581358', '$2y$10$oSXlQRYdq.Rr6P1Wkf03POhLuaQhilpU3r9kImGcannilEX.4WWVS', 'EzYidwYh0cLBGEvz', 0, NULL, '2021-11-17 03:40:37', '2022-01-15 19:15:00', NULL),
(13, 'Duy Uyen', 'duyuyen@localhost.com', NULL, '0169581358', '$2y$10$3ImDntkYhBC33P1kBlOuAOmEpN2RODkM7V7fNjRlatk48a72tMBtK', NULL, 0, NULL, '2021-12-03 07:00:56', '2021-12-03 20:16:57', NULL),
(14, 'Van Chuong', '134tutu431@gmail.com', NULL, NULL, '$2y$10$kNpUS.o.h3H61uWyud1x0ejIEBKkjFL57iIWIaRYEiosCfI5DzKfG', '0aBbpMZX7XVdvgjR', 0, NULL, '2021-12-07 03:31:27', '2021-12-07 03:34:38', NULL),
(15, 'Moc Nhi', 'mocnhi1@gmail.com', NULL, '0156445651', '$2y$10$qZqOyXz9QVvG9OHJcd.YZOPFaP5q6b5IgQQEQsRQVHGTe/hqZB2ku', NULL, 0, NULL, '2022-01-14 19:56:33', '2022-01-14 20:05:41', NULL),
(16, '11', '12313@gmail.com', NULL, NULL, '$2y$10$bnagRqqfV/C2FRxNM5va7eUKnK3cm0D6ycZ/riExcbUo/bvj/sxwy', NULL, 0, NULL, '2022-01-14 20:07:55', '2022-01-14 20:07:55', NULL),
(17, 'Van Chuong', 'admin1@localhost.com', NULL, '0126555555', '$2y$10$F7E9DjdjBEyXYdq7Tvr8JORl1y84ugttSHd6VjoAskoLPeldg7zVO', NULL, 0, NULL, '2022-01-14 20:10:07', '2022-01-14 20:10:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `visitors`
--

INSERT INTO `visitors` (`id`, `ip`, `date`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '2022-07-12', '2021-11-22 19:38:48', '2022-07-11 20:18:13'),
(2, '192.158.1.38', '2021-11-02', NULL, NULL),
(3, '192.128.1.38', '2021-10-28', NULL, NULL),
(4, '192.158.1.29', '2020-11-19', NULL, NULL),
(5, '192.138.1.38', '2021-11-11', NULL, NULL),
(6, '192.168.1.0', '2021-10-13', NULL, NULL),
(7, '192.158.1.0', '2021-11-11', NULL, NULL),
(8, '::1', '2022-07-12', '2021-11-26 21:14:06', '2022-07-11 20:18:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_2` (`code`),
  ADD KEY `code` (`code`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `fa_q_s`
--
ALTER TABLE `fa_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manufacturers_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oders`
--
ALTER TABLE `oders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `discount` (`discount`);

--
-- Chỉ mục cho bảng `oder_details`
--
ALTER TABLE `oder_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oder_id` (`oder_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statisticals`
--
ALTER TABLE `statisticals`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `fa_q_s`
--
ALTER TABLE `fa_q_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `oders`
--
ALTER TABLE `oders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `oder_details`
--
ALTER TABLE `oder_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `statisticals`
--
ALTER TABLE `statisticals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
